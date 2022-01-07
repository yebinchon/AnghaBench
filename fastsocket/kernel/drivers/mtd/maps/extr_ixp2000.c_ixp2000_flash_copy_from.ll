; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_ixp2000.c_ixp2000_flash_copy_from.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_ixp2000.c_ixp2000_flash_copy_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i8*, i64, i32)* @ixp2000_flash_copy_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixp2000_flash_copy_from(%struct.map_info* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.map_info*, %struct.map_info** %5, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i64 @flash_bank_setup(%struct.map_info* %9, i64 %10)
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %16, %4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.map_info*, %struct.map_info** %5, align 8
  %18 = getelementptr inbounds %struct.map_info, %struct.map_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %7, align 8
  %22 = add i64 %19, %20
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  %27 = bitcast i8* %25 to i32*
  store i32 %24, i32* %27, align 4
  br label %12

28:                                               ; preds = %12
  ret void
}

declare dso_local i64 @flash_bank_setup(%struct.map_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
