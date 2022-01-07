; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_process_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_process_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32*, i32, i32, %struct.alps_data* }
%struct.alps_data = type { i32, i64, {}*, i32, i32 }

@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4
@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@ALPS_PS2_INTERLEAVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"refusing packet[0] = %x (mask0 = %x, byte0 = %x)\0A\00", align 1
@PSMOUSE_BAD_DATA = common dso_local global i32 0, align 4
@ALPS_PROTO_V5 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"refusing packet[%i] = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_process_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_process_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 3
  %7 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  store %struct.alps_data* %7, %struct.alps_data** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 200
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %17 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %22 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %23 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @alps_report_bare_ps2_packet(%struct.psmouse* %21, i32* %24, i32 1)
  %26 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %26, i32* %2, align 4
  br label %142

27:                                               ; preds = %15
  %28 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %28, i32* %2, align 4
  br label %142

29:                                               ; preds = %1
  %30 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %31 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ALPS_PS2_INTERLEAVED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %38 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 4
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %43 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  %48 = icmp eq i32 %47, 15
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %51 = call i32 @alps_handle_interleaved_ps2(%struct.psmouse* %50)
  store i32 %51, i32* %2, align 4
  br label %142

52:                                               ; preds = %41, %36, %29
  %53 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %54 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %55 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @alps_is_valid_first_byte(%struct.alps_data* %53, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %52
  %62 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %63 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %68 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %71 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69, i32 %72)
  %74 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %74, i32* %2, align 4
  br label %142

75:                                               ; preds = %52
  %76 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %77 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ALPS_PROTO_V5, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %75
  %82 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %83 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 2
  br i1 %85, label %86, label %124

86:                                               ; preds = %81
  %87 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %88 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %91 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp sle i32 %89, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %86
  %95 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %96 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %99 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 128
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %94
  %108 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %109 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %113 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %116 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %121)
  %123 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %123, i32* %2, align 4
  br label %142

124:                                              ; preds = %94, %86, %81, %75
  %125 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %126 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %129 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %134 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %133, i32 0, i32 2
  %135 = bitcast {}** %134 to i32 (%struct.psmouse*)**
  %136 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %135, align 8
  %137 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %138 = call i32 %136(%struct.psmouse* %137)
  %139 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %139, i32* %2, align 4
  br label %142

140:                                              ; preds = %124
  %141 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %132, %107, %61, %49, %27, %20
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @alps_report_bare_ps2_packet(%struct.psmouse*, i32*, i32) #1

declare dso_local i32 @alps_handle_interleaved_ps2(%struct.psmouse*) #1

declare dso_local i32 @alps_is_valid_first_byte(%struct.alps_data*, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
