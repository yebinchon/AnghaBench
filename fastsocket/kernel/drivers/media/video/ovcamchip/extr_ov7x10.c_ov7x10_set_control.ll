; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x10.c_ov7x10_set_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x10.c_ov7x10_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip_control = type { i32, i32 }
%struct.ovcamchip = type { %struct.ov7x10* }
%struct.ov7x10 = type { i32, i32, i32, i32 }

@REG_CNT = common dso_local global i32 0, align 4
@REG_BRT = common dso_local global i32 0, align 4
@REG_SAT = common dso_local global i32 0, align 4
@REG_RED = common dso_local global i32 0, align 4
@REG_BLUE = common dso_local global i32 0, align 4
@REG_EXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"control not supported: %d\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"id=%d, arg=%d, rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_control*)* @ov7x10_set_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7x10_set_control(%struct.i2c_client* %0, %struct.ovcamchip_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ovcamchip_control*, align 8
  %6 = alloca %struct.ovcamchip*, align 8
  %7 = alloca %struct.ov7x10*, align 8
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
  %15 = load %struct.ov7x10*, %struct.ov7x10** %14, align 8
  store %struct.ov7x10* %15, %struct.ov7x10** %7, align 8
  %16 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %17 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %20 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %133 [
    i32 133, label %22
    i32 134, label %28
    i32 128, label %34
    i32 130, label %40
    i32 132, label %56
    i32 131, label %61
    i32 135, label %93
    i32 137, label %103
    i32 136, label %113
    i32 129, label %123
  ]

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @REG_CNT, align 4
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  %27 = call i32 @ov_write(%struct.i2c_client* %23, i32 %24, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %142

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @REG_BRT, align 4
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 8
  %33 = call i32 @ov_write(%struct.i2c_client* %29, i32 %30, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %142

34:                                               ; preds = %2
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @REG_SAT, align 4
  %37 = load i32, i32* %9, align 4
  %38 = ashr i32 %37, 8
  %39 = call i32 @ov_write(%struct.i2c_client* %35, i32 %36, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %142

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
  br label %143

50:                                               ; preds = %40
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load i32, i32* @REG_BLUE, align 4
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 8
  %55 = call i32 @ov_write(%struct.i2c_client* %51, i32 %52, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %142

56:                                               ; preds = %2
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load i32, i32* @REG_EXP, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ov_write(%struct.i2c_client* %57, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %142

61:                                               ; preds = %2
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 60
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 128
  %70 = call i32 @ov_write_mask(%struct.i2c_client* %65, i32 42, i32 %69, i32 128)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %143

74:                                               ; preds = %61
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 172
  %80 = call i32 @ov_write(%struct.i2c_client* %75, i32 43, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %143

84:                                               ; preds = %74
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = call i32 @ov_write_mask(%struct.i2c_client* %85, i32 19, i32 16, i32 16)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %143

90:                                               ; preds = %84
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = call i32 @ov_write_mask(%struct.i2c_client* %91, i32 19, i32 0, i32 16)
  store i32 %92, i32* %8, align 4
  br label %142

93:                                               ; preds = %2
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 4, i32 0
  %99 = call i32 @ov_write_mask(%struct.i2c_client* %94, i32 45, i32 %98, i32 4)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.ov7x10*, %struct.ov7x10** %7, align 8
  %102 = getelementptr inbounds %struct.ov7x10, %struct.ov7x10* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  br label %142

103:                                              ; preds = %2
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 16, i32 0
  %109 = call i32 @ov_write_mask(%struct.i2c_client* %104, i32 45, i32 %108, i32 16)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.ov7x10*, %struct.ov7x10** %7, align 8
  %112 = getelementptr inbounds %struct.ov7x10, %struct.ov7x10* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %142

113:                                              ; preds = %2
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 0, i32 128
  %119 = call i32 @ov_write_mask(%struct.i2c_client* %114, i32 41, i32 %118, i32 128)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.ov7x10*, %struct.ov7x10** %7, align 8
  %122 = getelementptr inbounds %struct.ov7x10, %struct.ov7x10* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  br label %142

123:                                              ; preds = %2
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 64, i32 0
  %129 = call i32 @ov_write_mask(%struct.i2c_client* %124, i32 18, i32 %128, i32 64)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.ov7x10*, %struct.ov7x10** %7, align 8
  %132 = getelementptr inbounds %struct.ov7x10, %struct.ov7x10* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  br label %142

133:                                              ; preds = %2
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 0
  %136 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %137 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 2, i32* %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @EPERM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %153

142:                                              ; preds = %123, %113, %103, %93, %90, %56, %50, %34, %28, %22
  br label %143

143:                                              ; preds = %142, %89, %83, %73, %49
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %147 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 3, i32* %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %143, %133
  %154 = load i32, i32* %3, align 4
  ret i32 %154
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
