; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov6x20.c_ov6x20_set_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov6x20.c_ov6x20_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip_control = type { i32, i32 }
%struct.ovcamchip = type { %struct.ov6x20* }
%struct.ov6x20 = type { i32, i32, i32, i32, i32 }

@REG_CNT = common dso_local global i32 0, align 4
@REG_BRT = common dso_local global i32 0, align 4
@REG_SAT = common dso_local global i32 0, align 4
@REG_RED = common dso_local global i32 0, align 4
@REG_BLUE = common dso_local global i32 0, align 4
@REG_EXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"control not supported: %d\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"id=%d, arg=%d, rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_control*)* @ov6x20_set_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6x20_set_control(%struct.i2c_client* %0, %struct.ovcamchip_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ovcamchip_control*, align 8
  %6 = alloca %struct.ovcamchip*, align 8
  %7 = alloca %struct.ov6x20*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.ovcamchip_control* %1, %struct.ovcamchip_control** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.ovcamchip* %12, %struct.ovcamchip** %6, align 8
  %13 = load %struct.ovcamchip*, %struct.ovcamchip** %6, align 8
  %14 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %13, i32 0, i32 0
  %15 = load %struct.ov6x20*, %struct.ov6x20** %14, align 8
  store %struct.ov6x20* %15, %struct.ov6x20** %7, align 8
  %16 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %17 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %20 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %151 [
    i32 133, label %22
    i32 134, label %28
    i32 128, label %34
    i32 130, label %40
    i32 132, label %56
    i32 131, label %61
    i32 135, label %81
    i32 138, label %91
    i32 137, label %101
    i32 136, label %111
    i32 129, label %141
  ]

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @REG_CNT, align 4
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  %27 = call i32 @ov_write(%struct.i2c_client* %23, i32 %24, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %160

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @REG_BRT, align 4
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 8
  %33 = call i32 @ov_write(%struct.i2c_client* %29, i32 %30, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %160

34:                                               ; preds = %2
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @REG_SAT, align 4
  %37 = load i32, i32* %9, align 4
  %38 = ashr i32 %37, 8
  %39 = call i32 @ov_write(%struct.i2c_client* %35, i32 %36, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %160

40:                                               ; preds = %2
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* @REG_RED, align 4
  %43 = load i32, i32* %9, align 4
  %44 = ashr i32 %43, 8
  %45 = sub nsw i32 255, %44
  %46 = call i32 @ov_write(%struct.i2c_client* %41, i32 %42, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %161

50:                                               ; preds = %40
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load i32, i32* @REG_BLUE, align 4
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 8
  %55 = call i32 @ov_write(%struct.i2c_client* %51, i32 %52, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %160

56:                                               ; preds = %2
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load i32, i32* @REG_EXP, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ov_write(%struct.i2c_client* %57, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %160

61:                                               ; preds = %2
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 60
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 168, i32 40
  %70 = call i32 @ov_write(%struct.i2c_client* %65, i32 43, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %161

74:                                               ; preds = %61
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 132, i32 164
  %80 = call i32 @ov_write(%struct.i2c_client* %75, i32 42, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %160

81:                                               ; preds = %2
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 4, i32 0
  %87 = call i32 @ov_write_mask(%struct.i2c_client* %82, i32 45, i32 %86, i32 4)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.ov6x20*, %struct.ov6x20** %7, align 8
  %90 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %160

91:                                               ; preds = %2
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 16, i32 0
  %97 = call i32 @ov_write_mask(%struct.i2c_client* %92, i32 45, i32 %96, i32 16)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.ov6x20*, %struct.ov6x20** %7, align 8
  %100 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %160

101:                                              ; preds = %2
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  %107 = call i32 @ov_write_mask(%struct.i2c_client* %102, i32 19, i32 %106, i32 1)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.ov6x20*, %struct.ov6x20** %7, align 8
  %110 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  br label %160

111:                                              ; preds = %2
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 224, i32 192
  %117 = call i32 @ov_write_mask(%struct.i2c_client* %112, i32 78, i32 %116, i32 224)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %161

121:                                              ; preds = %111
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 8, i32 0
  %127 = call i32 @ov_write_mask(%struct.i2c_client* %122, i32 41, i32 %126, i32 8)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %161

131:                                              ; preds = %121
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 128, i32 0
  %137 = call i32 @ov_write_mask(%struct.i2c_client* %132, i32 14, i32 %136, i32 128)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.ov6x20*, %struct.ov6x20** %7, align 8
  %140 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  br label %160

141:                                              ; preds = %2
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 64, i32 0
  %147 = call i32 @ov_write_mask(%struct.i2c_client* %142, i32 18, i32 %146, i32 64)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.ov6x20*, %struct.ov6x20** %7, align 8
  %150 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  br label %160

151:                                              ; preds = %2
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 0
  %154 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %155 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 2, i32* %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @EPERM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %171

160:                                              ; preds = %141, %131, %101, %91, %81, %74, %56, %50, %34, %28, %22
  br label %161

161:                                              ; preds = %160, %130, %120, %73, %49
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %165 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 3, i32* %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %161, %151
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ov_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ov_write_mask(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @DDEBUG(i32, i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
