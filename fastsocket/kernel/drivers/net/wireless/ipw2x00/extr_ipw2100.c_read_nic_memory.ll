; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_read_nic_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_read_nic_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@IPW_REG_INDIRECT_ACCESS_ADDRESS = common dso_local global i32 0, align 4
@IPW_REG_INDIRECT_ACCESS_DATA = common dso_local global i64 0, align 8
@IPW_REG_AUTOINCREMENT_ADDRESS = common dso_local global i32 0, align 4
@IPW_REG_AUTOINCREMENT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32*)* @read_nic_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_nic_memory(%struct.net_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, -4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %4
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load i32, i32* @IPW_REG_INDIRECT_ACCESS_ADDRESS, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @write_register(%struct.net_device* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %37, %20
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load i64, i64* @IPW_REG_INDIRECT_ACCESS_DATA, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @read_register_byte(%struct.net_device* %30, i64 %34, i32* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  br label %26

42:                                               ; preds = %26
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %42, %4
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = load i32, i32* @IPW_REG_AUTOINCREMENT_ADDRESS, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @write_register(%struct.net_device* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, -4
  store i32 %54, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %64, %48
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load i32, i32* @IPW_REG_AUTOINCREMENT_DATA, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @read_register(%struct.net_device* %60, i32 %61, i32* %62)
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 4
  store i32 %66, i32* %12, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32* %68, i32** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 4
  store i32 %70, i32* %9, align 4
  br label %55

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %11, align 4
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = load i32, i32* @IPW_REG_INDIRECT_ACCESS_ADDRESS, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @write_register(%struct.net_device* %75, i32 %76, i32 %77)
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %91, %71
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = load i64, i64* @IPW_REG_INDIRECT_ACCESS_DATA, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @read_register_byte(%struct.net_device* %84, i64 %88, i32* %89)
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %8, align 8
  br label %79

96:                                               ; preds = %79
  ret void
}

declare dso_local i32 @write_register(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_register_byte(%struct.net_device*, i64, i32*) #1

declare dso_local i32 @read_register(%struct.net_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
