; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_redraw_screen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_redraw_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i32, i64, i32, i32, %struct.TYPE_3__*, %struct.vc_data** }
%struct.TYPE_3__ = type { i32 (%struct.vc_data*)* }

@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@fg_console = common dso_local global i64 0, align 8
@KD_GRAPHICS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redraw_screen(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %10 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %11 = icmp ne %struct.vc_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %115

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %18 = load i64, i64* @fg_console, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.vc_data*, %struct.vc_data** %20, align 8
  store %struct.vc_data* %21, %struct.vc_data** %6, align 8
  %22 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %23 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %24 = icmp eq %struct.vc_data* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %115

26:                                               ; preds = %16
  %27 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %28 = call i32 @CON_IS_VISIBLE(%struct.vc_data* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 6
  %35 = load %struct.vc_data**, %struct.vc_data*** %34, align 8
  store %struct.vc_data* %32, %struct.vc_data** %35, align 8
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* @fg_console, align 8
  %39 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %40 = call i32 @hide_cursor(%struct.vc_data* %39)
  %41 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %42 = call i32 @CON_IS_VISIBLE(%struct.vc_data* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %31
  %45 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %46 = call i32 @save_screen(%struct.vc_data* %45)
  %47 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %48 = call i32 @set_origin(%struct.vc_data* %47)
  br label %49

49:                                               ; preds = %44, %31
  br label %53

50:                                               ; preds = %13
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = call i32 @hide_cursor(%struct.vc_data* %51)
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %49
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %105

56:                                               ; preds = %53
  %57 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  %60 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %61 = call i32 @set_origin(%struct.vc_data* %60)
  %62 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %62, i32 0, i32 5
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)** %65, align 8
  %67 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %68 = call i32 %66(%struct.vc_data* %67)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %70 = call i32 @set_palette(%struct.vc_data* %69)
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %73 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %56
  %77 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %78 = call i32 @update_attr(%struct.vc_data* %77)
  %79 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %80 = call i32 @clear_buffer_attributes(%struct.vc_data* %79)
  br label %81

81:                                               ; preds = %76, %56
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %86 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @KD_GRAPHICS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %84, %81
  %91 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %92 = call i64 @vt_force_oops_output(%struct.vc_data* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %90, %84
  %95 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %96 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %97 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %100 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = sdiv i32 %101, 2
  %103 = call i32 @do_update_region(%struct.vc_data* %95, i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %94, %90
  br label %105

105:                                              ; preds = %104, %53
  %106 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %107 = call i32 @set_cursor(%struct.vc_data* %106)
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = call i32 (...) @set_leds()
  %112 = call i32 (...) @compute_shiftstate()
  %113 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %114 = call i32 @notify_update(%struct.vc_data* %113)
  br label %115

115:                                              ; preds = %12, %25, %110, %105
  ret void
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @CON_IS_VISIBLE(%struct.vc_data*) #1

declare dso_local i32 @hide_cursor(%struct.vc_data*) #1

declare dso_local i32 @save_screen(%struct.vc_data*) #1

declare dso_local i32 @set_origin(%struct.vc_data*) #1

declare dso_local i32 @set_palette(%struct.vc_data*) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

declare dso_local i32 @clear_buffer_attributes(%struct.vc_data*) #1

declare dso_local i64 @vt_force_oops_output(%struct.vc_data*) #1

declare dso_local i32 @do_update_region(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @set_cursor(%struct.vc_data*) #1

declare dso_local i32 @set_leds(...) #1

declare dso_local i32 @compute_shiftstate(...) #1

declare dso_local i32 @notify_update(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
