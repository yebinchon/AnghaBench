; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_titan.c_el_process_regatta_subpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_titan.c_el_process_regatta_subpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_subpacket = type { i64, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.el_common = type { i32 }

@EL_CLASS__REGATTA_FAMILY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"%s  ** Unexpected header CLASS %d TYPE %d, aborting\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s  ** Occurred on CPU %d:\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s  ** REGATTA TYPE %d SUBPACKET\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.el_subpacket* (%struct.el_subpacket*)* @el_process_regatta_subpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.el_subpacket* @el_process_regatta_subpacket(%struct.el_subpacket* %0) #0 {
  %2 = alloca %struct.el_subpacket*, align 8
  %3 = alloca %struct.el_subpacket*, align 8
  %4 = alloca i32, align 4
  store %struct.el_subpacket* %0, %struct.el_subpacket** %3, align 8
  %5 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %6 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @EL_CLASS__REGATTA_FAMILY, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @err_print_prefix, align 4
  %12 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %13 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %17 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %18)
  store %struct.el_subpacket* null, %struct.el_subpacket** %2, align 8
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %22 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %40 [
    i32 130, label %24
    i32 128, label %24
    i32 132, label %24
    i32 131, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %20, %20, %20, %20, %20
  %25 = load i32, i32* @err_print_prefix, align 4
  %26 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %27 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %31)
  %33 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %34 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.el_common*
  %39 = call i32 @privateer_process_logout_frame(%struct.el_common* %38, i32 1)
  store i32 %39, i32* %4, align 4
  br label %48

40:                                               ; preds = %20
  %41 = load i32, i32* @err_print_prefix, align 4
  %42 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %43 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %47 = call i32 @el_annotate_subpacket(%struct.el_subpacket* %46)
  br label %48

48:                                               ; preds = %40, %24
  %49 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %50 = ptrtoint %struct.el_subpacket* %49 to i64
  %51 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %52 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %50, %53
  %55 = inttoptr i64 %54 to %struct.el_subpacket*
  store %struct.el_subpacket* %55, %struct.el_subpacket** %2, align 8
  br label %56

56:                                               ; preds = %48, %10
  %57 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  ret %struct.el_subpacket* %57
}

declare dso_local i32 @printk(i8*, i32, i32, ...) #1

declare dso_local i32 @privateer_process_logout_frame(%struct.el_common*, i32) #1

declare dso_local i32 @el_annotate_subpacket(%struct.el_subpacket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
