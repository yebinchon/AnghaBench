; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_for_each_subchannel_staged.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_for_each_subchannel_staged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type opaque
%struct.cb_data = type { i32 (%struct.subchannel.0*, i8*)*, {}*, i32, i8* }
%struct.subchannel.0 = type opaque

@call_fn_all_sch = common dso_local global i32 0, align 4
@css_bus_type = common dso_local global i32 0, align 4
@call_fn_known_sch = common dso_local global i32 0, align 4
@call_fn_unknown_sch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_each_subchannel_staged(i32 (%struct.subchannel*, i8*)* %0, {}* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.subchannel*, i8*)*, align 8
  %6 = alloca {}*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cb_data, align 8
  %9 = alloca i32, align 4
  store i32 (%struct.subchannel*, i8*)* %0, i32 (%struct.subchannel*, i8*)** %5, align 8
  store {}* %1, {}** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 3
  store i8* %10, i8** %11, align 8
  %12 = load i32 (%struct.subchannel*, i8*)*, i32 (%struct.subchannel*, i8*)** %5, align 8
  %13 = bitcast i32 (%struct.subchannel*, i8*)* %12 to i32 (%struct.subchannel.0*, i8*)*
  %14 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 0
  store i32 (%struct.subchannel.0*, i8*)* %13, i32 (%struct.subchannel.0*, i8*)** %14, align 8
  %15 = load {}*, {}** %6, align 8
  %16 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 1
  store {}* %15, {}** %16, align 8
  %17 = call i32 (...) @idset_sch_new()
  %18 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @call_fn_all_sch, align 4
  %24 = call i32 @for_each_subchannel(i32 %23, %struct.cb_data* %8)
  store i32 %24, i32* %4, align 4
  br label %46

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @idset_fill(i32 %27)
  %29 = load i32, i32* @call_fn_known_sch, align 4
  %30 = call i32 @bus_for_each_dev(i32* @css_bus_type, i32* null, %struct.cb_data* %8, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %41

34:                                               ; preds = %25
  %35 = load {}*, {}** %6, align 8
  %36 = icmp ne {}* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @call_fn_unknown_sch, align 4
  %39 = call i32 @for_each_subchannel(i32 %38, %struct.cb_data* %8)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %33
  %42 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @idset_free(i32 %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %22
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @idset_sch_new(...) #1

declare dso_local i32 @for_each_subchannel(i32, %struct.cb_data*) #1

declare dso_local i32 @idset_fill(i32) #1

declare dso_local i32 @bus_for_each_dev(i32*, i32*, %struct.cb_data*, i32) #1

declare dso_local i32 @idset_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
