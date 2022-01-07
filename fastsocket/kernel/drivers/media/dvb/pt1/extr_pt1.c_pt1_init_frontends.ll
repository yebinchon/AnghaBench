; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_init_frontends.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_init_frontends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1_config = type { i32, i32 }
%struct.pt1 = type { i32*, %struct.TYPE_3__*, %struct.i2c_adapter }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.dvb_frontend = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque

@pt1_configs = common dso_local global %struct.pt1_config* null, align 8
@pt2_configs = common dso_local global %struct.pt1_config* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*)* @pt1_init_frontends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_init_frontends(%struct.pt1* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.pt1_config*, align 8
  %8 = alloca %struct.pt1_config*, align 8
  %9 = alloca [4 x %struct.dvb_frontend*], align 16
  %10 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.pt1*, %struct.pt1** %3, align 8
  %12 = getelementptr inbounds %struct.pt1, %struct.pt1* %11, i32 0, i32 2
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load %struct.pt1*, %struct.pt1** %3, align 8
  %14 = getelementptr inbounds %struct.pt1, %struct.pt1* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 8474
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load %struct.pt1_config*, %struct.pt1_config** @pt1_configs, align 8
  br label %23

21:                                               ; preds = %1
  %22 = load %struct.pt1_config*, %struct.pt1_config** @pt2_configs, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi %struct.pt1_config* [ %20, %19 ], [ %22, %21 ]
  store %struct.pt1_config* %24, %struct.pt1_config** %7, align 8
  br label %25

25:                                               ; preds = %87, %23
  %26 = load %struct.pt1_config*, %struct.pt1_config** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pt1_config, %struct.pt1_config* %26, i64 %29
  store %struct.pt1_config* %30, %struct.pt1_config** %8, align 8
  %31 = load %struct.pt1_config*, %struct.pt1_config** %8, align 8
  %32 = getelementptr inbounds %struct.pt1_config, %struct.pt1_config* %31, i32 0, i32 1
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %34 = call %struct.dvb_frontend* @va1j5jf8007s_attach(i32* %32, %struct.i2c_adapter* %33)
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x %struct.dvb_frontend*], [4 x %struct.dvb_frontend*]* %9, i64 0, i64 %36
  store %struct.dvb_frontend* %34, %struct.dvb_frontend** %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x %struct.dvb_frontend*], [4 x %struct.dvb_frontend*]* %9, i64 0, i64 %39
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %40, align 8
  %42 = icmp ne %struct.dvb_frontend* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %25
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %113

46:                                               ; preds = %25
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  %49 = load %struct.pt1_config*, %struct.pt1_config** %8, align 8
  %50 = getelementptr inbounds %struct.pt1_config, %struct.pt1_config* %49, i32 0, i32 0
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %52 = call %struct.dvb_frontend* @va1j5jf8007t_attach(i32* %50, %struct.i2c_adapter* %51)
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x %struct.dvb_frontend*], [4 x %struct.dvb_frontend*]* %9, i64 0, i64 %54
  store %struct.dvb_frontend* %52, %struct.dvb_frontend** %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x %struct.dvb_frontend*], [4 x %struct.dvb_frontend*]* %9, i64 0, i64 %57
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %58, align 8
  %60 = icmp ne %struct.dvb_frontend* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %113

64:                                               ; preds = %46
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x %struct.dvb_frontend*], [4 x %struct.dvb_frontend*]* %9, i64 0, i64 %69
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %70, align 8
  %72 = call i32 @va1j5jf8007s_prepare(%struct.dvb_frontend* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %113

76:                                               ; preds = %64
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x %struct.dvb_frontend*], [4 x %struct.dvb_frontend*]* %9, i64 0, i64 %79
  %81 = load %struct.dvb_frontend*, %struct.dvb_frontend** %80, align 8
  %82 = call i32 @va1j5jf8007t_prepare(%struct.dvb_frontend* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %113

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %25, label %90

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %108, %90
  %92 = load %struct.pt1*, %struct.pt1** %3, align 8
  %93 = getelementptr inbounds %struct.pt1, %struct.pt1* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x %struct.dvb_frontend*], [4 x %struct.dvb_frontend*]* %9, i64 0, i64 %100
  %102 = load %struct.dvb_frontend*, %struct.dvb_frontend** %101, align 8
  %103 = call i32 @pt1_init_frontend(i32 %98, %struct.dvb_frontend* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %91
  br label %113

107:                                              ; preds = %91
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %91, label %112

112:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %146

113:                                              ; preds = %106, %85, %75, %61, %43
  br label %114

114:                                              ; preds = %119, %113
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp sgt i32 %115, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %114
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x %struct.dvb_frontend*], [4 x %struct.dvb_frontend*]* %9, i64 0, i64 %121
  %123 = load %struct.dvb_frontend*, %struct.dvb_frontend** %122, align 8
  %124 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x %struct.dvb_frontend*], [4 x %struct.dvb_frontend*]* %9, i64 0, i64 %128
  %130 = load %struct.dvb_frontend*, %struct.dvb_frontend** %129, align 8
  %131 = bitcast %struct.dvb_frontend* %130 to %struct.dvb_frontend.0*
  %132 = call i32 %126(%struct.dvb_frontend.0* %131)
  br label %114

133:                                              ; preds = %114
  br label %134

134:                                              ; preds = %138, %133
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %5, align 4
  %137 = icmp ne i32 %135, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x %struct.dvb_frontend*], [4 x %struct.dvb_frontend*]* %9, i64 0, i64 %140
  %142 = load %struct.dvb_frontend*, %struct.dvb_frontend** %141, align 8
  %143 = call i32 @dvb_unregister_frontend(%struct.dvb_frontend* %142)
  br label %134

144:                                              ; preds = %134
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %112
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.dvb_frontend* @va1j5jf8007s_attach(i32*, %struct.i2c_adapter*) #1

declare dso_local %struct.dvb_frontend* @va1j5jf8007t_attach(i32*, %struct.i2c_adapter*) #1

declare dso_local i32 @va1j5jf8007s_prepare(%struct.dvb_frontend*) #1

declare dso_local i32 @va1j5jf8007t_prepare(%struct.dvb_frontend*) #1

declare dso_local i32 @pt1_init_frontend(i32, %struct.dvb_frontend*) #1

declare dso_local i32 @dvb_unregister_frontend(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
