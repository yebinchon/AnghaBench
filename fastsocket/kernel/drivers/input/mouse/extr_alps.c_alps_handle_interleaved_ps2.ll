; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_handle_interleaved_ps2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_handle_interleaved_ps2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32*, %struct.alps_data* }
%struct.alps_data = type { {}*, i32 }

@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"refusing packet %x %x %x %x (suspected interleaved ps/2)\0A\00", align 1
@PSMOUSE_BAD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_handle_interleaved_ps2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_handle_interleaved_ps2(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 2
  %7 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  store %struct.alps_data* %7, %struct.alps_data** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %13, i32* %2, align 4
  br label %129

14:                                               ; preds = %1
  %15 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 6
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %21 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %20, i32 0, i32 1
  %22 = load i64, i64* @jiffies, align 8
  %23 = call i64 @msecs_to_jiffies(i32 20)
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mod_timer(i32* %21, i64 %24)
  %26 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %26, i32* %2, align 4
  br label %129

27:                                               ; preds = %14
  %28 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %29 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %28, i32 0, i32 1
  %30 = call i32 @del_timer(i32* %29)
  %31 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %32 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %108

38:                                               ; preds = %27
  %39 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %40 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %45 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %43, %48
  %50 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %51 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %49, %54
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %38
  %59 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %60 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %61 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @alps_is_valid_first_byte(%struct.alps_data* %59, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %58, %38
  %68 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %69 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %74 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %79 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %84 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dbg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %77, i32 %82, i32 %87)
  %89 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %89, i32* %2, align 4
  br label %129

90:                                               ; preds = %58
  %91 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %92 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %91, i32 0, i32 0
  %93 = bitcast {}** %92 to i32 (%struct.psmouse*)**
  %94 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %93, align 8
  %95 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %96 = call i32 %94(%struct.psmouse* %95)
  %97 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %98 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %103 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %101, i32* %105, align 4
  %106 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %107 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %127

108:                                              ; preds = %27
  %109 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %110 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %111 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = call i32 @alps_report_bare_ps2_packet(%struct.psmouse* %109, i32* %113, i32 0)
  %115 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %116 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 6
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 247
  %121 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %122 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  store i32 %120, i32* %124, align 4
  %125 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %126 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %125, i32 0, i32 0
  store i32 4, i32* %126, align 8
  br label %127

127:                                              ; preds = %108, %90
  %128 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %67, %19, %12
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @alps_is_valid_first_byte(%struct.alps_data*, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @alps_report_bare_ps2_packet(%struct.psmouse*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
