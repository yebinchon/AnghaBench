; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_ixp2000.c_ixp2000_flash_copy_to.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_ixp2000.c_ixp2000_flash_copy_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i64, i8*, i32)* @ixp2000_flash_copy_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixp2000_flash_copy_to(%struct.map_info* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.map_info*, %struct.map_info** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @flash_bank_setup(%struct.map_info* %10, i64 %11)
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %17, %4
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.map_info*, %struct.map_info** %5, align 8
  %19 = getelementptr inbounds %struct.map_info, %struct.map_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %6, align 8
  %23 = add i64 %20, %21
  %24 = call i64 @address_fix8_write(i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  %27 = bitcast i8* %25 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %9, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %13

31:                                               ; preds = %13
  ret void
}

declare dso_local i64 @flash_bank_setup(%struct.map_info*, i64) #1

declare dso_local i64 @address_fix8_write(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
