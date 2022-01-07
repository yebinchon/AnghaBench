; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_write_nic_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_write_nic_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@IPW_REG_INDIRECT_ACCESS_ADDRESS = common dso_local global i32 0, align 4
@IPW_REG_INDIRECT_ACCESS_DATA = common dso_local global i64 0, align 8
@IPW_REG_AUTOINCREMENT_ADDRESS = common dso_local global i32 0, align 4
@IPW_REG_AUTOINCREMENT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32*)* @write_nic_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_nic_memory(%struct.net_device* %0, i32 %1, i32 %2, i32* %3) #0 {
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
  br i1 %19, label %20, label %49

20:                                               ; preds = %4
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load i32, i32* @IPW_REG_INDIRECT_ACCESS_ADDRESS, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @write_register(%struct.net_device* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %38, %20
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load i64, i64* @IPW_REG_INDIRECT_ACCESS_DATA, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @write_register_byte(%struct.net_device* %30, i64 %34, i32 %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %8, align 8
  br label %26

43:                                               ; preds = %26
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %43, %4
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load i32, i32* @IPW_REG_AUTOINCREMENT_ADDRESS, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @write_register(%struct.net_device* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, -4
  store i32 %55, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %66, %49
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = load i32, i32* @IPW_REG_AUTOINCREMENT_DATA, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @write_register(%struct.net_device* %61, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 4
  store i32 %68, i32* %12, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32* %70, i32** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 4
  store i32 %72, i32* %9, align 4
  br label %56

73:                                               ; preds = %56
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %11, align 4
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = load i32, i32* @IPW_REG_INDIRECT_ACCESS_ADDRESS, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @write_register(%struct.net_device* %77, i32 %78, i32 %79)
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %94, %73
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = load i64, i64* @IPW_REG_INDIRECT_ACCESS_DATA, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @write_register_byte(%struct.net_device* %86, i64 %90, i32 %92)
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %8, align 8
  br label %81

99:                                               ; preds = %81
  ret void
}

declare dso_local i32 @write_register(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_register_byte(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
