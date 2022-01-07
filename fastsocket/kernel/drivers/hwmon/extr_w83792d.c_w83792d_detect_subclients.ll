; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_w83792d_detect_subclients.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_w83792d_detect_subclients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.w83792d_data = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@force_subclients = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"invalid subclient address %d; must be 0x48-0x4f\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@W83792D_REG_I2C_SUBADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"duplicate addresses 0x%x, use force_subclient\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @w83792d_detect_subclients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83792d_detect_subclients(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca %struct.w83792d_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 2
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %9, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.w83792d_data* %18, %struct.w83792d_data** %10, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %20 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** @force_subclients, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %1
  %27 = load i32*, i32** @force_subclients, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %26
  store i32 2, i32* %4, align 4
  br label %33

33:                                               ; preds = %62, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp sle i32 %34, 3
  br i1 %35, label %36, label %65

36:                                               ; preds = %33
  %37 = load i32*, i32** @force_subclients, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 72
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load i32*, i32** @force_subclients, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 79
  br i1 %49, label %50, label %61

50:                                               ; preds = %43, %36
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 1
  %53 = load i32*, i32** @force_subclients, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %156

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %33

65:                                               ; preds = %33
  %66 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %67 = load i32, i32* @W83792D_REG_I2C_SUBADDR, align 4
  %68 = load i32*, i32** @force_subclients, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 7
  %72 = load i32*, i32** @force_subclients, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 7
  %76 = shl i32 %75, 4
  %77 = or i32 %71, %76
  %78 = call i32 @w83792d_write_value(%struct.i2c_client* %66, i32 %67, i32 %77)
  br label %79

79:                                               ; preds = %65, %26, %1
  %80 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %81 = load i32, i32* @W83792D_REG_I2C_SUBADDR, align 4
  %82 = call i32 @w83792d_read_value(%struct.i2c_client* %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %79
  %87 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 7
  %90 = add nsw i32 72, %89
  %91 = call i8* @i2c_new_dummy(%struct.i2c_adapter* %87, i32 %90)
  %92 = bitcast i8* %91 to %struct.TYPE_2__*
  %93 = load %struct.w83792d_data*, %struct.w83792d_data** %10, align 8
  %94 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %95, i64 0
  store %struct.TYPE_2__* %92, %struct.TYPE_2__** %96, align 8
  br label %97

97:                                               ; preds = %86, %79
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, 128
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %140, label %101

101:                                              ; preds = %97
  %102 = load %struct.w83792d_data*, %struct.w83792d_data** %10, align 8
  %103 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %104, i64 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = icmp ne %struct.TYPE_2__* %106, null
  br i1 %107, label %108, label %128

108:                                              ; preds = %101
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 7
  %111 = load i32, i32* %8, align 4
  %112 = ashr i32 %111, 4
  %113 = and i32 %112, 7
  %114 = icmp eq i32 %110, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %108
  %116 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 1
  %118 = load %struct.w83792d_data*, %struct.w83792d_data** %10, align 8
  %119 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %120, i64 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @ENODEV, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %141

128:                                              ; preds = %108, %101
  %129 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %130 = load i32, i32* %8, align 4
  %131 = ashr i32 %130, 4
  %132 = and i32 %131, 7
  %133 = add nsw i32 72, %132
  %134 = call i8* @i2c_new_dummy(%struct.i2c_adapter* %129, i32 %133)
  %135 = bitcast i8* %134 to %struct.TYPE_2__*
  %136 = load %struct.w83792d_data*, %struct.w83792d_data** %10, align 8
  %137 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %138, i64 1
  store %struct.TYPE_2__* %135, %struct.TYPE_2__** %139, align 8
  br label %140

140:                                              ; preds = %128, %97
  store i32 0, i32* %2, align 4
  br label %158

141:                                              ; preds = %115
  %142 = load %struct.w83792d_data*, %struct.w83792d_data** %10, align 8
  %143 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %142, i32 0, i32 0
  %144 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %144, i64 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = icmp ne %struct.TYPE_2__* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = load %struct.w83792d_data*, %struct.w83792d_data** %10, align 8
  %150 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %151, i64 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = call i32 @i2c_unregister_device(%struct.TYPE_2__* %153)
  br label %155

155:                                              ; preds = %148, %141
  br label %156

156:                                              ; preds = %155, %50
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %140
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i8* @i2c_new_dummy(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
