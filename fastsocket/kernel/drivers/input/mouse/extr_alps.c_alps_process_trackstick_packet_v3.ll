; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_process_trackstick_packet_v3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_process_trackstick_packet_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.alps_data* }
%struct.alps_data = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Bad trackstick packet, discarding\0A\00", align 1
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@ALPS_QUIRK_TRACKSTICK_BUTTONS = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @alps_process_trackstick_packet_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_process_trackstick_packet_v3(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.alps_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 1
  %14 = load %struct.alps_data*, %struct.alps_data** %13, align 8
  store %struct.alps_data* %14, %struct.alps_data** %3, align 8
  %15 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %4, align 8
  %18 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %19 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %18, i32 0, i32 1
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 64
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  %28 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %151

29:                                               ; preds = %1
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 127
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 127
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 127
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %151

48:                                               ; preds = %41, %35, %29
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 32
  %54 = shl i32 %53, 2
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 127
  %60 = or i32 %54, %59
  store i32 %60, i32* %6, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 16
  %66 = shl i32 %65, 3
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 127
  %72 = or i32 %66, %71
  store i32 %72, i32* %7, align 4
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 124
  %78 = ashr i32 %77, 2
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sdiv i32 %79, 8
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sdiv i32 %81, 8
  store i32 %82, i32* %7, align 4
  %83 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %84 = load i32, i32* @REL_X, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @input_report_rel(%struct.input_dev* %83, i32 %84, i32 %85)
  %87 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %88 = load i32, i32* @REL_Y, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 0, %89
  %91 = call i32 @input_report_rel(%struct.input_dev* %87, i32 %88, i32 %90)
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 3
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 2
  store i32 %101, i32* %10, align 4
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 3
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 4
  store i32 %106, i32* %11, align 4
  %107 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %108 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ALPS_QUIRK_TRACKSTICK_BUTTONS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %128, label %113

113:                                              ; preds = %48
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119, %116, %113
  %123 = load i32, i32* @ALPS_QUIRK_TRACKSTICK_BUTTONS, align 4
  %124 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %125 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %119, %48
  %129 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %130 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @ALPS_QUIRK_TRACKSTICK_BUTTONS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %128
  %136 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %137 = load i32, i32* @BTN_LEFT, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @input_report_key(%struct.input_dev* %136, i32 %137, i32 %138)
  %140 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %141 = load i32, i32* @BTN_RIGHT, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @input_report_key(%struct.input_dev* %140, i32 %141, i32 %142)
  %144 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %145 = load i32, i32* @BTN_MIDDLE, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @input_report_key(%struct.input_dev* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %135, %128
  %149 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %150 = call i32 @input_sync(%struct.input_dev* %149)
  br label %151

151:                                              ; preds = %148, %47, %27
  ret void
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
