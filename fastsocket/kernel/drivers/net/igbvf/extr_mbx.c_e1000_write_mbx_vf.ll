; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_mbx.c_e1000_write_mbx_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_mbx.c_e1000_write_mbx_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@E1000_V2PMAILBOX_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32*, i64)* @e1000_write_mbx_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_mbx_vf(%struct.e1000_hw* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = call i64 @e1000_obtain_mbx_lock_vf(%struct.e1000_hw* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %44

14:                                               ; preds = %3
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %16 = call i32 @e1000_check_for_ack_vf(%struct.e1000_hw* %15)
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %18 = call i32 @e1000_check_for_msg_vf(%struct.e1000_hw* %17)
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %31, %14
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = call i32 @VMBMEM(i32 0)
  %25 = load i64, i64* %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @array_ew32(i32 %24, i64 %25, i32 %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %8, align 8
  br label %19

34:                                               ; preds = %19
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = call i32 @V2PMAILBOX(i32 0)
  %42 = load i32, i32* @E1000_V2PMAILBOX_REQ, align 4
  %43 = call i32 @ew32(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %13
  %45 = load i64, i64* %7, align 8
  ret i64 %45
}

declare dso_local i64 @e1000_obtain_mbx_lock_vf(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_check_for_ack_vf(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_check_for_msg_vf(%struct.e1000_hw*) #1

declare dso_local i32 @array_ew32(i32, i64, i32) #1

declare dso_local i32 @VMBMEM(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @V2PMAILBOX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
