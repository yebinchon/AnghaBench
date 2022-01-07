; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_io.c_pcm_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_io.c_pcm_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*)*, %struct.TYPE_18__*, i32, i32*, i32, %struct.TYPE_14__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.pc_maint*, i32)*, i64 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*, i32)* }
%struct.pc_maint = type { i32 }
%struct.TYPE_16__ = type { i32 }

@CARD_MAE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"data_pcm_1\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"data_pcm_3\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"data_pcm_2\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"data_pcm_4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*)* @pcm_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm_req(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.pc_maint*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 10
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %8, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.pc_maint*
  store %struct.pc_maint* %15, %struct.pc_maint** %9, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CARD_MAE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 6
  %25 = call i32 @diva_os_enter_spin_lock(i32* %24, i32* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.pc_maint*, %struct.pc_maint** %9, align 8
  %27 = bitcast %struct.pc_maint* %26 to i8*
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 7
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 8
  %35 = call i32 @diva_os_schedule_soft_isr(i32* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 6
  %38 = call i32 @diva_os_leave_spin_lock(i32* %37, i32* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 3000, i32 250
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %80, %22
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 0
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  br i1 %52, label %53, label %83

53:                                               ; preds = %51
  %54 = call i32 @diva_os_sleep(i32 1)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 6
  %62 = call i32 @diva_os_enter_spin_lock(i32* %61, i32* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 7
  store i32* null, i32** %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 6
  %69 = call i32 @diva_os_leave_spin_lock(i32* %68, i32* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %188

70:                                               ; preds = %53
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 6
  %73 = call i32 @diva_os_enter_spin_lock(i32* %72, i32* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 8
  %76 = call i32 @diva_os_schedule_soft_isr(i32* %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 6
  %79 = call i32 @diva_os_leave_spin_lock(i32* %78, i32* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %6, align 4
  br label %45

83:                                               ; preds = %51
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 6
  %86 = call i32 @diva_os_enter_spin_lock(i32* %85, i32* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 7
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 6
  %93 = call i32 @diva_os_leave_spin_lock(i32* %92, i32* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %152

94:                                               ; preds = %2
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %96, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 5
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = call i32 %97(%struct.TYPE_17__* %98, i32* %102, i32 0)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load i32 (%struct.TYPE_17__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32*, i32)** %105, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load %struct.pc_maint*, %struct.pc_maint** %9, align 8
  %113 = getelementptr inbounds %struct.pc_maint, %struct.pc_maint* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 %106(%struct.TYPE_17__* %107, i32* %111, i32 %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 3000, i32 250
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %150, %94
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %6, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %122
  %127 = call i32 @diva_os_sleep(i32 1)
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i64 (%struct.TYPE_17__*, i32*)*, i64 (%struct.TYPE_17__*, i32*)** %129, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = call i64 %130(%struct.TYPE_17__* %131, i32* %135)
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %126
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.pc_maint*, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.pc_maint*, i32)** %142, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = load %struct.pc_maint*, %struct.pc_maint** %9, align 8
  %149 = call i32 %143(%struct.TYPE_17__* %144, %struct.TYPE_18__* %147, %struct.pc_maint* %148, i32 4)
  br label %188

150:                                              ; preds = %126
  br label %122

151:                                              ; preds = %122
  br label %152

152:                                              ; preds = %151, %83
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 4
  %155 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %154, align 8
  %156 = icmp ne i32 (%struct.TYPE_15__*)* %155, null
  br i1 %156, label %157, label %188

157:                                              ; preds = %152
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %10, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 4
  %163 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %162, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %165 = call i32 %163(%struct.TYPE_15__* %164)
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %187, label %168

168:                                              ; preds = %157
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %168
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  %176 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %175, align 8
  %177 = icmp ne i32 (%struct.TYPE_15__*, i32)* %176, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %180, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 %181(%struct.TYPE_15__* %182, i32 %185)
  br label %187

187:                                              ; preds = %178, %173, %168, %157
  br label %188

188:                                              ; preds = %59, %140, %187, %152
  ret void
}

declare dso_local i32 @diva_os_enter_spin_lock(i32*, i32*, i8*) #1

declare dso_local i32 @diva_os_schedule_soft_isr(i32*) #1

declare dso_local i32 @diva_os_leave_spin_lock(i32*, i32*, i8*) #1

declare dso_local i32 @diva_os_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
