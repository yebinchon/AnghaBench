; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_down1tr6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_down1tr6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 (%struct.l3_process*, i32, i8*)* }
%struct.l3_process = type { i32, i32, %struct.TYPE_5__, %struct.Channel* }
%struct.TYPE_5__ = type { i32 }
%struct.Channel = type { i32, %struct.l3_process* }
%struct.PStack = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DL_ESTABLISH = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@CC_SETUP = common dso_local global i32 0, align 4
@downstl = common dso_local global %struct.TYPE_7__* null, align 8
@L3_DEB_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"down1tr6 state %d prim %d unhandled\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"down1tr6 state %d prim %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, i32, i8*)* @down1tr6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @down1tr6(%struct.PStack* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.l3_process*, align 8
  %10 = alloca %struct.Channel*, align 8
  %11 = alloca [80 x i8], align 16
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @DL_ESTABLISH, align 4
  %13 = load i32, i32* @REQUEST, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.PStack*, %struct.PStack** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @l3_msg(%struct.PStack* %18, i32 %19, i32* null)
  br label %145

21:                                               ; preds = %3
  %22 = load i32, i32* @CC_SETUP, align 4
  %23 = load i32, i32* @REQUEST, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to %struct.Channel*
  store %struct.Channel* %29, %struct.Channel** %10, align 8
  %30 = call i32 (...) @newcallref()
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, 128
  store i32 %32, i32* %8, align 4
  %33 = load %struct.PStack*, %struct.PStack** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.l3_process* @new_l3_process(%struct.PStack* %33, i32 %34)
  store %struct.l3_process* %35, %struct.l3_process** %9, align 8
  %36 = icmp ne %struct.l3_process* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %145

38:                                               ; preds = %27
  %39 = load %struct.Channel*, %struct.Channel** %10, align 8
  %40 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %41 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %40, i32 0, i32 3
  store %struct.Channel* %39, %struct.Channel** %41, align 8
  %42 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %43 = load %struct.Channel*, %struct.Channel** %10, align 8
  %44 = getelementptr inbounds %struct.Channel, %struct.Channel* %43, i32 0, i32 1
  store %struct.l3_process* %42, %struct.l3_process** %44, align 8
  %45 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %46 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.Channel*, %struct.Channel** %10, align 8
  %49 = getelementptr inbounds %struct.Channel, %struct.Channel* %48, i32 0, i32 0
  %50 = call i32 @memcpy(i32* %47, i32* %49, i32 4)
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %53 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %38
  br label %58

55:                                               ; preds = %21
  %56 = load i8*, i8** %6, align 8
  %57 = bitcast i8* %56 to %struct.l3_process*
  store %struct.l3_process* %57, %struct.l3_process** %9, align 8
  br label %58

58:                                               ; preds = %55, %54
  br label %59

59:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %89, %59
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @downstl, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @downstl, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %66, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %65
  %75 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %76 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 1, %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @downstl, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %78, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %92

88:                                               ; preds = %74, %65
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %60

92:                                               ; preds = %87, %60
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @downstl, align 8
  %95 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %94)
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  %98 = load %struct.PStack*, %struct.PStack** %4, align 8
  %99 = getelementptr inbounds %struct.PStack, %struct.PStack* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @L3_DEB_STATE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %107 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %108 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @sprintf(i8* %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.PStack*, %struct.PStack** %4, align 8
  %113 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %114 = call i32 @l3_debug(%struct.PStack* %112, i8* %113)
  br label %115

115:                                              ; preds = %105, %97
  br label %145

116:                                              ; preds = %92
  %117 = load %struct.PStack*, %struct.PStack** %4, align 8
  %118 = getelementptr inbounds %struct.PStack, %struct.PStack* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @L3_DEB_STATE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %116
  %125 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %126 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %127 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @sprintf(i8* %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load %struct.PStack*, %struct.PStack** %4, align 8
  %132 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %133 = call i32 @l3_debug(%struct.PStack* %131, i8* %132)
  br label %134

134:                                              ; preds = %124, %116
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** @downstl, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load i32 (%struct.l3_process*, i32, i8*)*, i32 (%struct.l3_process*, i32, i8*)** %139, align 8
  %141 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 %140(%struct.l3_process* %141, i32 %142, i8* %143)
  br label %145

145:                                              ; preds = %17, %37, %134, %115
  ret void
}

declare dso_local i32 @l3_msg(%struct.PStack*, i32, i32*) #1

declare dso_local i32 @newcallref(...) #1

declare dso_local %struct.l3_process* @new_l3_process(%struct.PStack*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @l3_debug(%struct.PStack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
