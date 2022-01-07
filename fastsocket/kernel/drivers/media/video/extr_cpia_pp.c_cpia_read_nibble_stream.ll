; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_read_nibble_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_read_nibble_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PARPORT_CONTROL_AUTOFD = common dso_local global i32 0, align 4
@IEEE1284_PH_REV_DATA = common dso_local global i32 0, align 4
@PARPORT_STATUS_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: Nibble timeout at event 9 (%d bytes)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: Nibble timeout at event 11\0A\00", align 1
@EOI = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parport*, i8*, i64, i32)* @cpia_read_nibble_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpia_read_nibble_stream(%struct.parport* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.parport*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8], align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %133, %4
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %136

21:                                               ; preds = %16
  store i8 0, i8* %13, align 1
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %136

25:                                               ; preds = %21
  %26 = load %struct.parport*, %struct.parport** %5, align 8
  %27 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %28 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %29 = call i32 @parport_frob_control(%struct.parport* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @IEEE1284_PH_REV_DATA, align 4
  %31 = load %struct.parport*, %struct.parport** %5, align 8
  %32 = getelementptr inbounds %struct.parport, %struct.parport* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.parport*, %struct.parport** %5, align 8
  %35 = load i32, i32* @PARPORT_STATUS_ACK, align 4
  %36 = call i64 @parport_wait_peripheral(%struct.parport* %34, i32 %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = load %struct.parport*, %struct.parport** %5, align 8
  %40 = getelementptr inbounds %struct.parport, %struct.parport* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 %42, 2
  %44 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %43)
  %45 = load %struct.parport*, %struct.parport** %5, align 8
  %46 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %47 = call i32 @parport_frob_control(%struct.parport* %45, i32 %46, i32 0)
  br label %136

48:                                               ; preds = %25
  %49 = load %struct.parport*, %struct.parport** %5, align 8
  %50 = call i32 @parport_read_status(%struct.parport* %49)
  %51 = ashr i32 %50, 3
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %52, i8* %53, align 1
  %54 = load %struct.parport*, %struct.parport** %5, align 8
  %55 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %56 = call i32 @parport_frob_control(%struct.parport* %54, i32 %55, i32 0)
  %57 = load %struct.parport*, %struct.parport** %5, align 8
  %58 = load i32, i32* @PARPORT_STATUS_ACK, align 4
  %59 = load i32, i32* @PARPORT_STATUS_ACK, align 4
  %60 = call i64 @parport_wait_peripheral(%struct.parport* %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %48
  %63 = load %struct.parport*, %struct.parport** %5, align 8
  %64 = getelementptr inbounds %struct.parport, %struct.parport* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %136

67:                                               ; preds = %48
  %68 = load %struct.parport*, %struct.parport** %5, align 8
  %69 = call i32 @parport_read_status(%struct.parport* %68)
  %70 = ashr i32 %69, 3
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %71, i8* %72, align 1
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %107, %67
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %110

76:                                               ; preds = %73
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, -9
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %76
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %96, 8
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %94, align 1
  br label %99

99:                                               ; preds = %91, %76
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 15
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %102, align 1
  br label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %73

110:                                              ; preds = %73
  %111 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 4
  %118 = or i32 %113, %117
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %13, align 1
  %120 = load i8, i8* %13, align 1
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %10, align 8
  store i8 %120, i8* %121, align 1
  %123 = load i8, i8* %13, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* @EOI, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %110
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %132

131:                                              ; preds = %110
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %131, %128
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %16

136:                                              ; preds = %62, %38, %24, %16
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  ret i64 %138
}

declare dso_local i32 @parport_frob_control(%struct.parport*, i32, i32) #1

declare dso_local i64 @parport_wait_peripheral(%struct.parport*, i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @parport_read_status(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
