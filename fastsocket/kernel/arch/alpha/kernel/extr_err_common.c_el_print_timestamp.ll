; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_common.c_el_print_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_common.c_el_print_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.el_timestamp = type { i64, [16 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"%s  TIMESTAMP: %d/%d/%02d %d:%02d:%0d\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @el_print_timestamp(%union.el_timestamp* %0) #0 {
  %2 = alloca %union.el_timestamp*, align 8
  store %union.el_timestamp* %0, %union.el_timestamp** %2, align 8
  %3 = load %union.el_timestamp*, %union.el_timestamp** %2, align 8
  %4 = bitcast %union.el_timestamp* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load i32, i32* @err_print_prefix, align 4
  %9 = load %union.el_timestamp*, %union.el_timestamp** %2, align 8
  %10 = bitcast %union.el_timestamp* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %union.el_timestamp*, %union.el_timestamp** %2, align 8
  %14 = bitcast %union.el_timestamp* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %union.el_timestamp*, %union.el_timestamp** %2, align 8
  %18 = bitcast %union.el_timestamp* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %union.el_timestamp*, %union.el_timestamp** %2, align 8
  %22 = bitcast %union.el_timestamp* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %union.el_timestamp*, %union.el_timestamp** %2, align 8
  %26 = bitcast %union.el_timestamp* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %union.el_timestamp*, %union.el_timestamp** %2, align 8
  %30 = bitcast %union.el_timestamp* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12, i32 %16, i32 %20, i32 %24, i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
