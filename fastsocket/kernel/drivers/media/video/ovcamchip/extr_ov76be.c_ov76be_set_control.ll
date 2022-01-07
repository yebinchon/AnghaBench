; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov76be.c_ov76be_set_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov76be.c_ov76be_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip_control = type { i32, i32 }
%struct.ovcamchip = type { %struct.ov76be* }
%struct.ov76be = type { i32, i32, i32, i32 }

@REG_BRT = common dso_local global i32 0, align 4
@REG_SAT = common dso_local global i32 0, align 4
@REG_EXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"control not supported: %d\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"id=%d, arg=%d, rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_control*)* @ov76be_set_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov76be_set_control(%struct.i2c_client* %0, %struct.ovcamchip_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ovcamchip_control*, align 8
  %6 = alloca %struct.ovcamchip*, align 8
  %7 = alloca %struct.ov76be*, align 8
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
  %15 = load %struct.ov76be*, %struct.ov76be** %14, align 8
  store %struct.ov76be* %15, %struct.ov76be** %7, align 8
  %16 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %17 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %20 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %105 [
    i32 132, label %22
    i32 128, label %28
    i32 131, label %34
    i32 130, label %39
    i32 133, label %65
    i32 135, label %75
    i32 134, label %85
    i32 129, label %95
  ]

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @REG_BRT, align 4
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  %27 = call i32 @ov_write(%struct.i2c_client* %23, i32 %24, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %114

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @REG_SAT, align 4
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 8
  %33 = call i32 @ov_write(%struct.i2c_client* %29, i32 %30, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %114

34:                                               ; preds = %2
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @REG_EXP, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ov_write(%struct.i2c_client* %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %114

39:                                               ; preds = %2
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 60
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 128
  %48 = call i32 @ov_write_mask(%struct.i2c_client* %43, i32 42, i32 %47, i32 128)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %115

52:                                               ; preds = %39
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 172
  %58 = call i32 @ov_write(%struct.i2c_client* %53, i32 43, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %115

62:                                               ; preds = %52
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = call i32 @ov_write_mask(%struct.i2c_client* %63, i32 118, i32 1, i32 1)
  store i32 %64, i32* %8, align 4
  br label %114

65:                                               ; preds = %2
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 4, i32 0
  %71 = call i32 @ov_write_mask(%struct.i2c_client* %66, i32 45, i32 %70, i32 4)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.ov76be*, %struct.ov76be** %7, align 8
  %74 = getelementptr inbounds %struct.ov76be, %struct.ov76be* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %114

75:                                               ; preds = %2
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 16, i32 0
  %81 = call i32 @ov_write_mask(%struct.i2c_client* %76, i32 45, i32 %80, i32 16)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.ov76be*, %struct.ov76be** %7, align 8
  %84 = getelementptr inbounds %struct.ov76be, %struct.ov76be* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %114

85:                                               ; preds = %2
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = call i32 @ov_write_mask(%struct.i2c_client* %86, i32 19, i32 %90, i32 1)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.ov76be*, %struct.ov76be** %7, align 8
  %94 = getelementptr inbounds %struct.ov76be, %struct.ov76be* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %114

95:                                               ; preds = %2
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 64, i32 0
  %101 = call i32 @ov_write_mask(%struct.i2c_client* %96, i32 18, i32 %100, i32 64)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.ov76be*, %struct.ov76be** %7, align 8
  %104 = getelementptr inbounds %struct.ov76be, %struct.ov76be* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %114

105:                                              ; preds = %2
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %109 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 2, i32* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @EPERM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %125

114:                                              ; preds = %95, %85, %75, %65, %62, %34, %28, %22
  br label %115

115:                                              ; preds = %114, %61, %51
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load %struct.ovcamchip_control*, %struct.ovcamchip_control** %5, align 8
  %119 = getelementptr inbounds %struct.ovcamchip_control, %struct.ovcamchip_control* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (i32, i32*, i8*, i32, ...) @DDEBUG(i32 3, i32* %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %115, %105
  %126 = load i32, i32* %3, align 4
  ret i32 %126
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
