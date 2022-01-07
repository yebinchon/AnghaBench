; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@tpdebug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"l=%d r=%d x=%d y=%d\0A\00", align 1
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @hgpk_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hgpk_process_packet(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 1
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %3, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = ashr i32 %23, 1
  %25 = and i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 4
  %35 = and i32 %34, 256
  %36 = sub nsw i32 %29, %35
  store i32 %36, i32* %5, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 3
  %42 = and i32 %41, 256
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @hgpk_jumpy_hack(%struct.psmouse* %48, i32 %49, i32 %50)
  %52 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @hgpk_spewing_hack(%struct.psmouse* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i64, i64* @tpdebug, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %1
  %61 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @hgpk_dbg(%struct.psmouse* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %1
  %68 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %69 = load i32, i32* @BTN_LEFT, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @input_report_key(%struct.input_dev* %68, i32 %69, i32 %70)
  %72 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %73 = load i32, i32* @BTN_RIGHT, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @input_report_key(%struct.input_dev* %72, i32 %73, i32 %74)
  %76 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %77 = load i32, i32* @REL_X, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @input_report_rel(%struct.input_dev* %76, i32 %77, i32 %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %81 = load i32, i32* @REL_Y, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @input_report_rel(%struct.input_dev* %80, i32 %81, i32 %82)
  %84 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %85 = call i32 @input_sync(%struct.input_dev* %84)
  ret void
}

declare dso_local i32 @hgpk_jumpy_hack(%struct.psmouse*, i32, i32) #1

declare dso_local i32 @hgpk_spewing_hack(%struct.psmouse*, i32, i32, i32, i32) #1

declare dso_local i32 @hgpk_dbg(%struct.psmouse*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
