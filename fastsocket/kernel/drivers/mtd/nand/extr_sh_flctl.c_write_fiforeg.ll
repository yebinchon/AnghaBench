; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_write_fiforeg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_write_fiforeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_flctl = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_flctl*, i32, i32)* @write_fiforeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_fiforeg(%struct.sh_flctl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sh_flctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  store %struct.sh_flctl* %0, %struct.sh_flctl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %12 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = bitcast i32* %16 to i64*
  store i64* %17, i64** %9, align 8
  %18 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %19 = call i64 @FLDTFIFO(%struct.sh_flctl* %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %10, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 3
  %23 = sdiv i32 %22, 4
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %39, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %30 = call i32 @wait_wfifo_ready(%struct.sh_flctl* %29)
  %31 = load i64*, i64** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @cpu_to_be32(i64 %35)
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @writel(i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %24

42:                                               ; preds = %24
  ret void
}

declare dso_local i64 @FLDTFIFO(%struct.sh_flctl*) #1

declare dso_local i32 @wait_wfifo_ready(%struct.sh_flctl*) #1

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
