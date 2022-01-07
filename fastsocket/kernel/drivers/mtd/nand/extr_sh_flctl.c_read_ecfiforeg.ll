; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_read_ecfiforeg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_read_ecfiforeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_flctl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_flctl*, i32*, i32)* @read_ecfiforeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ecfiforeg(%struct.sh_flctl* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_flctl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  store %struct.sh_flctl* %0, %struct.sh_flctl** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = bitcast i32* %11 to i64*
  store i64* %12, i64** %9, align 8
  %13 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %14 = call i64 @FLECFIFO(%struct.sh_flctl* %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %42, %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @wait_recfifo_ready(%struct.sh_flctl* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %46

25:                                               ; preds = %19
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @readl(i8* %26)
  %28 = load i64*, i64** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 %27, i64* %31, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @be32_to_cpu(i64 %36)
  %38 = load i64*, i64** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 %37, i64* %41, align 8
  br label %42

42:                                               ; preds = %25
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %16

45:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @FLECFIFO(%struct.sh_flctl*) #1

declare dso_local i64 @wait_recfifo_ready(%struct.sh_flctl*, i32) #1

declare dso_local i64 @readl(i8*) #1

declare dso_local i64 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
