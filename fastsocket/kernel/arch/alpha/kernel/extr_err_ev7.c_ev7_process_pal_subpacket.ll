; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_ev7.c_ev7_process_pal_subpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_ev7.c_ev7_process_pal_subpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_subpacket = type { i64, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ev7_pal_subpacket = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@EL_CLASS__PAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"%s  ** Unexpected header CLASS %d TYPE %d, aborting\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s*** MCHK occurred on LPID %lld (RBOX %llx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s  EXC_ADDR: %016llx\0A  HALT_CODE: %llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s  ** PAL TYPE %d SUBPACKET\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.el_subpacket* (%struct.el_subpacket*)* @ev7_process_pal_subpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.el_subpacket* @ev7_process_pal_subpacket(%struct.el_subpacket* %0) #0 {
  %2 = alloca %struct.el_subpacket*, align 8
  %3 = alloca %struct.el_subpacket*, align 8
  %4 = alloca %struct.ev7_pal_subpacket*, align 8
  store %struct.el_subpacket* %0, %struct.el_subpacket** %3, align 8
  %5 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %6 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @EL_CLASS__PAL, align 8
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
  br label %83

20:                                               ; preds = %1
  %21 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %22 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ev7_pal_subpacket*
  store %struct.ev7_pal_subpacket* %26, %struct.ev7_pal_subpacket** %4, align 8
  %27 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %28 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %67 [
    i32 128, label %30
  ]

30:                                               ; preds = %20
  %31 = load i32, i32* @err_print_prefix, align 4
  %32 = load %struct.ev7_pal_subpacket*, %struct.ev7_pal_subpacket** %4, align 8
  %33 = getelementptr inbounds %struct.ev7_pal_subpacket, %struct.ev7_pal_subpacket* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ev7_pal_subpacket*, %struct.ev7_pal_subpacket** %4, align 8
  %38 = getelementptr inbounds %struct.ev7_pal_subpacket, %struct.ev7_pal_subpacket* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %36, i32 %41)
  %43 = load %struct.ev7_pal_subpacket*, %struct.ev7_pal_subpacket** %4, align 8
  %44 = getelementptr inbounds %struct.ev7_pal_subpacket, %struct.ev7_pal_subpacket* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = call i32 @el_print_timestamp(i32* %46)
  %48 = load i32, i32* @err_print_prefix, align 4
  %49 = load %struct.ev7_pal_subpacket*, %struct.ev7_pal_subpacket** %4, align 8
  %50 = getelementptr inbounds %struct.ev7_pal_subpacket, %struct.ev7_pal_subpacket* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ev7_pal_subpacket*, %struct.ev7_pal_subpacket** %4, align 8
  %55 = getelementptr inbounds %struct.ev7_pal_subpacket, %struct.ev7_pal_subpacket* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %53, i32 %58)
  %60 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %61 = load %struct.ev7_pal_subpacket*, %struct.ev7_pal_subpacket** %4, align 8
  %62 = getelementptr inbounds %struct.ev7_pal_subpacket, %struct.ev7_pal_subpacket* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @el_process_subpackets(%struct.el_subpacket* %60, i32 %65)
  br label %75

67:                                               ; preds = %20
  %68 = load i32, i32* @err_print_prefix, align 4
  %69 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %70 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %74 = call i32 @el_annotate_subpacket(%struct.el_subpacket* %73)
  br label %75

75:                                               ; preds = %67, %30
  %76 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %77 = ptrtoint %struct.el_subpacket* %76 to i64
  %78 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %79 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %77, %80
  %82 = inttoptr i64 %81 to %struct.el_subpacket*
  store %struct.el_subpacket* %82, %struct.el_subpacket** %2, align 8
  br label %83

83:                                               ; preds = %75, %10
  %84 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  ret %struct.el_subpacket* %84
}

declare dso_local i32 @printk(i8*, i32, i32, ...) #1

declare dso_local i32 @el_print_timestamp(i32*) #1

declare dso_local i32 @el_process_subpackets(%struct.el_subpacket*, i32) #1

declare dso_local i32 @el_annotate_subpacket(%struct.el_subpacket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
