; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x20.c_ov7x20_set_v4l1_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x20.c_ov7x20_set_v4l1_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip_control = type { i32, i32 }
%struct.ovcamchip = type { %struct.ov7x20* }
%struct.ov7x20 = type { i32, i32, i32, i32, i32 }

@ctab = common dso_local global i32* null, align 8
@REG_BRT = common dso_local global i32 0, align 4
@REG_SAT = common dso_local global i32 0, align 4
@REG_EXP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"control not supported: %d\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"id=%d, arg=%d, rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_control*)* @ov7x20_set_v4l1_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7x20_set_v4l1_control(%struct.i2c_client* %0, %struct.ovcamchip_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ovcamchip_control*, align 8
  %6 = alloca %struct.ovcamchip*, align 8
  %7 = alloca %struct.ov7x20*, align 8
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
  %15 = load %struct.ov7x20*, %struct.ov7x20** %14, align 8
  store %struct.ov7x20* %15, %struct.ov7x20** %7, align 8
  %16 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %17 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %20 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %160 [
    i32 132, label %22
    i32 133, label %31
    i32 128, label %44
    i32 131, label %50
    i32 130, label %64
    i32 134, label %90
    i32 137, label %100
    i32 136, label %110
    i32 135, label %120
    i32 129, label %150
  ]

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32*, i32** @ctab, align 8
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 12
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ov_write(%struct.i2c_client* %23, i32 100, i32 %29)
  store i32 %30, i32* %8, align 4
  br label %169

31:                                               ; preds = %2
  %32 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %33 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @REG_BRT, align 4
  %39 = load i32, i32* %9, align 4
  %40 = ashr i32 %39, 8
  %41 = call i32 @ov_write(%struct.i2c_client* %37, i32 %38, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %43

42:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %36
  br label %169

44:                                               ; preds = %2
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i32, i32* @REG_SAT, align 4
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 8
  %49 = call i32 @ov_write(%struct.i2c_client* %45, i32 %46, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %169

50:                                               ; preds = %2
  %51 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %52 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load i32, i32* @REG_EXP, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ov_write(%struct.i2c_client* %56, i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %55
  br label %169

64:                                               ; preds = %2
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 60
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 128
  %73 = call i32 @ov_write_mask(%struct.i2c_client* %68, i32 42, i32 %72, i32 128)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %170

77:                                               ; preds = %64
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 0, i32 172
  %83 = call i32 @ov_write(%struct.i2c_client* %78, i32 43, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %170

87:                                               ; preds = %77
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = call i32 @ov_write_mask(%struct.i2c_client* %88, i32 118, i32 1, i32 1)
  store i32 %89, i32* %8, align 4
  br label %169

90:                                               ; preds = %2
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 4, i32 0
  %96 = call i32 @ov_write_mask(%struct.i2c_client* %91, i32 45, i32 %95, i32 4)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %99 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %169

100:                                              ; preds = %2
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 16, i32 0
  %106 = call i32 @ov_write_mask(%struct.i2c_client* %101, i32 45, i32 %105, i32 16)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %109 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  br label %169

110:                                              ; preds = %2
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = call i32 @ov_write_mask(%struct.i2c_client* %111, i32 19, i32 %115, i32 1)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %119 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %169

120:                                              ; preds = %2
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 224, i32 192
  %126 = call i32 @ov_write_mask(%struct.i2c_client* %121, i32 104, i32 %125, i32 224)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %170

130:                                              ; preds = %120
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 8, i32 0
  %136 = call i32 @ov_write_mask(%struct.i2c_client* %131, i32 41, i32 %135, i32 8)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %170

140:                                              ; preds = %130
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 2, i32 0
  %146 = call i32 @ov_write_mask(%struct.i2c_client* %141, i32 40, i32 %145, i32 2)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %149 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  br label %169

150:                                              ; preds = %2
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 64, i32 0
  %156 = call i32 @ov_write_mask(%struct.i2c_client* %151, i32 18, i32 %155, i32 64)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.ov7x20*, %struct.ov7x20** %7, align 8
  %159 = getelementptr inbounds %struct.ov7x20, %struct.ov7x20* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 4
  br label %169

160:                                              ; preds = %2
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 0
  %163 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %164 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 2, i32* %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @EPERM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %180

169:                                              ; preds = %150, %140, %110, %100, %90, %87, %63, %44, %43, %22
  br label %170

170:                                              ; preds = %169, %139, %129, %86, %76
  %171 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 0
  %173 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %174 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 3, i32* %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %170, %160
  %181 = load i32, i32* %3, align 4
  ret i32 %181
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
