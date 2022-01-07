; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_read_nibble.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_read_nibble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PARPORT_STATUS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: No more nibble data (%d bytes)\0A\00", align 1
@PARPORT_CONTROL_AUTOFD = common dso_local global i32 0, align 4
@IEEE1284_PH_REV_DATA = common dso_local global i32 0, align 4
@PARPORT_STATUS_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: Nibble timeout at event 9 (%d bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: Nibble timeout at event 11\0A\00", align 1
@IEEE1284_PH_REV_IDLE = common dso_local global i32 0, align 4
@IEEE1284_PH_HBUSY_DAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parport*, i8*, i64, i32)* @cpia_read_nibble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpia_read_nibble(%struct.parport* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.parport*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  store i8 0, i8* %11, align 1
  %14 = load i64, i64* %7, align 8
  %15 = mul i64 %14, 2
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %114, %4
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %117

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.parport*, %struct.parport** %5, align 8
  %26 = call i32 @parport_read_status(%struct.parport* %25)
  %27 = load i32, i32* @PARPORT_STATUS_ERROR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.parport*, %struct.parport** %5, align 8
  %32 = getelementptr inbounds %struct.parport, %struct.parport* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sdiv i32 %34, 2
  %36 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  br label %129

37:                                               ; preds = %24, %21
  %38 = load %struct.parport*, %struct.parport** %5, align 8
  %39 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %40 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %41 = call i32 @parport_frob_control(%struct.parport* %38, i32 %39, i32 %40)
  %42 = load i32, i32* @IEEE1284_PH_REV_DATA, align 4
  %43 = load %struct.parport*, %struct.parport** %5, align 8
  %44 = getelementptr inbounds %struct.parport, %struct.parport* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.parport*, %struct.parport** %5, align 8
  %47 = load i32, i32* @PARPORT_STATUS_ACK, align 4
  %48 = call i64 @parport_wait_peripheral(%struct.parport* %46, i32 %47, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %37
  %51 = load %struct.parport*, %struct.parport** %5, align 8
  %52 = getelementptr inbounds %struct.parport, %struct.parport* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sdiv i32 %54, 2
  %56 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %55)
  %57 = load %struct.parport*, %struct.parport** %5, align 8
  %58 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %59 = call i32 @parport_frob_control(%struct.parport* %57, i32 %58, i32 0)
  br label %117

60:                                               ; preds = %37
  %61 = load %struct.parport*, %struct.parport** %5, align 8
  %62 = call i32 @parport_read_status(%struct.parport* %61)
  %63 = ashr i32 %62, 3
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %12, align 1
  %65 = load i8, i8* %12, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, -9
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %12, align 1
  %69 = load i8, i8* %12, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  %74 = load i8, i8* %12, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %75, 8
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %12, align 1
  br label %78

78:                                               ; preds = %73, %60
  %79 = load i8, i8* %12, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 15
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %12, align 1
  %83 = load %struct.parport*, %struct.parport** %5, align 8
  %84 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %85 = call i32 @parport_frob_control(%struct.parport* %83, i32 %84, i32 0)
  %86 = load %struct.parport*, %struct.parport** %5, align 8
  %87 = load i32, i32* @PARPORT_STATUS_ACK, align 4
  %88 = load i32, i32* @PARPORT_STATUS_ACK, align 4
  %89 = call i64 @parport_wait_peripheral(%struct.parport* %86, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %78
  %92 = load %struct.parport*, %struct.parport** %5, align 8
  %93 = getelementptr inbounds %struct.parport, %struct.parport* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %117

96:                                               ; preds = %78
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i8, i8* %12, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 %102, 4
  %104 = load i8, i8* %11, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %105, %103
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %11, align 1
  %108 = load i8, i8* %11, align 1
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  store i8 %108, i8* %109, align 1
  br label %113

111:                                              ; preds = %96
  %112 = load i8, i8* %12, align 1
  store i8 %112, i8* %11, align 1
  br label %113

113:                                              ; preds = %111, %100
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %16

117:                                              ; preds = %91, %50, %16
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %7, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %148

122:                                              ; preds = %117
  %123 = load %struct.parport*, %struct.parport** %5, align 8
  %124 = call i32 @parport_read_status(%struct.parport* %123)
  %125 = load i32, i32* @PARPORT_STATUS_ERROR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128, %30
  %130 = load %struct.parport*, %struct.parport** %5, align 8
  %131 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %132 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %133 = call i32 @parport_frob_control(%struct.parport* %130, i32 %131, i32 %132)
  %134 = load i32, i32* @IEEE1284_PH_REV_IDLE, align 4
  %135 = load %struct.parport*, %struct.parport** %5, align 8
  %136 = getelementptr inbounds %struct.parport, %struct.parport* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i32 %134, i32* %139, align 4
  br label %147

140:                                              ; preds = %122
  %141 = load i32, i32* @IEEE1284_PH_HBUSY_DAVAIL, align 4
  %142 = load %struct.parport*, %struct.parport** %5, align 8
  %143 = getelementptr inbounds %struct.parport, %struct.parport* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 %141, i32* %146, align 4
  br label %147

147:                                              ; preds = %140, %129
  br label %148

148:                                              ; preds = %147, %117
  %149 = load i32, i32* %10, align 4
  %150 = sdiv i32 %149, 2
  %151 = sext i32 %150 to i64
  ret i64 %151
}

declare dso_local i32 @parport_read_status(%struct.parport*) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @parport_frob_control(%struct.parport*, i32, i32) #1

declare dso_local i64 @parport_wait_peripheral(%struct.parport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
