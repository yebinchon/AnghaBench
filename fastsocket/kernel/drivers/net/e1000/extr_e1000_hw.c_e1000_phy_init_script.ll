; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_init_script.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_init_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"e1000_phy_init_script\00", align 1
@IGP01E1000_ANALOG_SPARE_FUSE_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_SPARE_FUSE_ENABLED = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_FINE_MASK = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_COARSE_MASK = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_COARSE_THRESH = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_COARSE_10 = common dso_local global i64 0, align 8
@IGP01E1000_ANALOG_FUSE_FINE_1 = common dso_local global i64 0, align 8
@IGP01E1000_ANALOG_FUSE_FINE_10 = common dso_local global i64 0, align 8
@IGP01E1000_ANALOG_FUSE_POLY_MASK = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_CONTROL = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_BYPASS = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_phy_init_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_phy_init_script(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %125

13:                                               ; preds = %1
  %14 = call i32 @msleep(i32 20)
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %15, i32 12123, i32* %4)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %17, i32 12123, i32 3)
  %19 = call i32 @msleep(i32 20)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %20, i32 0, i32 320)
  %22 = call i32 @msleep(i32 5)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %48 [
    i32 131, label %26
    i32 129, label %26
    i32 130, label %45
    i32 128, label %45
  ]

26:                                               ; preds = %13, %13
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %27, i32 8085, i32 1)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %29, i32 8049, i32 48417)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %31, i32 8057, i32 24)
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %33, i32 7984, i32 5632)
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %35, i32 7985, i32 20)
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %37, i32 7986, i32 5660)
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %39, i32 8084, i32 3)
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %41, i32 8086, i32 63)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %43, i32 8208, i32 8)
  br label %49

45:                                               ; preds = %13, %13
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %46, i32 8051, i32 153)
  br label %49

48:                                               ; preds = %13
  br label %49

49:                                               ; preds = %48, %45, %26
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %50, i32 0, i32 13056)
  %52 = call i32 @msleep(i32 20)
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %53, i32 12123, i32 %54)
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 129
  br i1 %59, label %60, label %124

60:                                               ; preds = %49
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = load i32, i32* @IGP01E1000_ANALOG_SPARE_FUSE_STATUS, align 4
  %63 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %61, i32 %62, i32* %5)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @IGP01E1000_ANALOG_SPARE_FUSE_ENABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %123, label %68

68:                                               ; preds = %60
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = load i32, i32* @IGP01E1000_ANALOG_FUSE_STATUS, align 4
  %71 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %69, i32 %70, i32* %5)
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @IGP01E1000_ANALOG_FUSE_FINE_MASK, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_MASK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_THRESH, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %68
  %82 = load i64, i64* @IGP01E1000_ANALOG_FUSE_COARSE_10, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %7, align 4
  %87 = load i64, i64* @IGP01E1000_ANALOG_FUSE_FINE_1, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %6, align 4
  br label %103

92:                                               ; preds = %68
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_THRESH, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i64, i64* @IGP01E1000_ANALOG_FUSE_FINE_10, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %96, %92
  br label %103

103:                                              ; preds = %102, %81
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @IGP01E1000_ANALOG_FUSE_POLY_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @IGP01E1000_ANALOG_FUSE_FINE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = or i32 %106, %109
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_MASK, align 4
  %113 = and i32 %111, %112
  %114 = or i32 %110, %113
  store i32 %114, i32* %5, align 4
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %116 = load i32, i32* @IGP01E1000_ANALOG_FUSE_CONTROL, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %115, i32 %116, i32 %117)
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %120 = load i32, i32* @IGP01E1000_ANALOG_FUSE_BYPASS, align 4
  %121 = load i32, i32* @IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL, align 4
  %122 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %103, %60
  br label %124

124:                                              ; preds = %123, %49
  br label %125

125:                                              ; preds = %124, %1
  ret void
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
