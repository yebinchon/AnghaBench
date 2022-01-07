; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_amd7930_fn.c_Amd7930_new_ph.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_amd7930_fn.c_Amd7930_new_ph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@stateHelper = common dso_local global i32* null, align 8
@i430States = common dso_local global i64* null, align 8
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"AMD7930: new_ph %d, old_ph %d, message %d, index %d\00", align 1
@HW_RESET = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@HW_DEACTIVATE = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@HW_POWERUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"HW_ENABLE REQUEST\00", align 1
@HW_RSYNC = common dso_local global i32 0, align 4
@HW_INFO4_P8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"HW_ENABLE REQ cleared if set\00", align 1
@HW_INFO2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"T3 expired, HW_ENABLE REQ cleared\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @Amd7930_new_ph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Amd7930_new_ph(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %5 = load i32*, i32** @stateHelper, align 8
  %6 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %7 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %5, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 8
  %14 = load i32*, i32** @stateHelper, align 8
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %16 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %13, %21
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  %25 = load i64*, i64** @i430States, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @L1_DEB_ISAC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %1
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %38 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = and i64 %47, 15
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @debugl1(%struct.IsdnCardState* %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %46, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %35, %1
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %53 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %58 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 %56, i64* %60, align 8
  %61 = load i64, i64* %4, align 8
  %62 = and i64 %61, 240
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %51
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %66 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %71 = call i32 @wByteAMD(%struct.IsdnCardState* %70, i32 33, i32 194)
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %73 = call i32 @wByteAMD(%struct.IsdnCardState* %72, i32 33, i32 2)
  br label %74

74:                                               ; preds = %69, %64, %51
  %75 = load i64, i64* %4, align 8
  %76 = and i64 %75, 15
  switch i64 %76, label %165 [
    i64 1, label %77
    i64 2, label %85
    i64 3, label %91
    i64 4, label %97
    i64 5, label %105
    i64 6, label %111
    i64 7, label %117
    i64 8, label %128
    i64 9, label %134
    i64 10, label %152
    i64 11, label %159
  ]

77:                                               ; preds = %74
  %78 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %79 = load i32, i32* @HW_RESET, align 4
  %80 = load i32, i32* @INDICATION, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @l1_msg(%struct.IsdnCardState* %78, i32 %81, i32* null)
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %84 = call i32 @Amd7930_get_state(%struct.IsdnCardState* %83)
  br label %166

85:                                               ; preds = %74
  %86 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %87 = load i32, i32* @HW_DEACTIVATE, align 4
  %88 = load i32, i32* @CONFIRM, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @l1_msg(%struct.IsdnCardState* %86, i32 %89, i32* null)
  br label %166

91:                                               ; preds = %74
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %93 = load i32, i32* @HW_DEACTIVATE, align 4
  %94 = load i32, i32* @INDICATION, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @l1_msg(%struct.IsdnCardState* %92, i32 %95, i32* null)
  br label %166

97:                                               ; preds = %74
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %99 = load i32, i32* @HW_POWERUP, align 4
  %100 = load i32, i32* @CONFIRM, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @l1_msg(%struct.IsdnCardState* %98, i32 %101, i32* null)
  %103 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %104 = call i32 @Amd7930_ph_command(%struct.IsdnCardState* %103, i32 80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %166

105:                                              ; preds = %74
  %106 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %107 = load i32, i32* @HW_RSYNC, align 4
  %108 = load i32, i32* @INDICATION, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @l1_msg(%struct.IsdnCardState* %106, i32 %109, i32* null)
  br label %166

111:                                              ; preds = %74
  %112 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %113 = load i32, i32* @HW_INFO4_P8, align 4
  %114 = load i32, i32* @INDICATION, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @l1_msg(%struct.IsdnCardState* %112, i32 %115, i32* null)
  br label %166

117:                                              ; preds = %74
  %118 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %119 = load i32, i32* @HW_RSYNC, align 4
  %120 = load i32, i32* @INDICATION, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @l1_msg(%struct.IsdnCardState* %118, i32 %121, i32* null)
  %123 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %124 = load i32, i32* @HW_INFO4_P8, align 4
  %125 = load i32, i32* @INDICATION, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @l1_msg(%struct.IsdnCardState* %123, i32 %126, i32* null)
  br label %166

128:                                              ; preds = %74
  %129 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %130 = load i32, i32* @HW_POWERUP, align 4
  %131 = load i32, i32* @CONFIRM, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @l1_msg(%struct.IsdnCardState* %129, i32 %132, i32* null)
  br label %134

134:                                              ; preds = %74, %128
  %135 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %136 = call i32 @Amd7930_ph_command(%struct.IsdnCardState* %135, i32 64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %137 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %138 = load i32, i32* @HW_RSYNC, align 4
  %139 = load i32, i32* @INDICATION, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @l1_msg(%struct.IsdnCardState* %137, i32 %140, i32* null)
  %142 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %143 = load i32, i32* @HW_INFO2, align 4
  %144 = load i32, i32* @INDICATION, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @l1_msg(%struct.IsdnCardState* %142, i32 %145, i32* null)
  %147 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %148 = load i32, i32* @HW_INFO4_P8, align 4
  %149 = load i32, i32* @INDICATION, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @l1_msg(%struct.IsdnCardState* %147, i32 %150, i32* null)
  br label %166

152:                                              ; preds = %74
  %153 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %154 = call i32 @Amd7930_ph_command(%struct.IsdnCardState* %153, i32 64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %155 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %156 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  store i64 3, i64* %158, align 8
  br label %166

159:                                              ; preds = %74
  %160 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %161 = load i32, i32* @HW_INFO2, align 4
  %162 = load i32, i32* @INDICATION, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @l1_msg(%struct.IsdnCardState* %160, i32 %163, i32* null)
  br label %166

165:                                              ; preds = %74
  br label %166

166:                                              ; preds = %165, %159, %152, %134, %117, %111, %105, %97, %91, %85, %77
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @wByteAMD(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @l1_msg(%struct.IsdnCardState*, i32, i32*) #1

declare dso_local i32 @Amd7930_get_state(%struct.IsdnCardState*) #1

declare dso_local i32 @Amd7930_ph_command(%struct.IsdnCardState*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
