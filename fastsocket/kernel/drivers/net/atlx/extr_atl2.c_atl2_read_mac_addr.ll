; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_atl2_read_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_atl2_read_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_hw = type { i32*, i32* }

@NODE_ADDRESS_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl2_hw*)* @atl2_read_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_read_mac_addr(%struct.atl2_hw* %0) #0 {
  %2 = alloca %struct.atl2_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.atl2_hw* %0, %struct.atl2_hw** %2, align 8
  %4 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %5 = call i64 @get_permanent_address(%struct.atl2_hw* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %9 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %13 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 19, i32* %15, align 4
  %16 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %17 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 116, i32* %19, align 4
  %20 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %21 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %25 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  store i32 92, i32* %27, align 4
  %28 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %29 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  store i32 56, i32* %31, align 4
  br label %32

32:                                               ; preds = %7, %1
  store i64 0, i64* %3, align 8
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @NODE_ADDRESS_SIZE, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %39 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %45 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %43, i32* %48, align 4
  br label %49

49:                                               ; preds = %37
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %33

52:                                               ; preds = %33
  ret i32 0
}

declare dso_local i64 @get_permanent_address(%struct.atl2_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
