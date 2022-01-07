; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_common.c_el_process_header_subpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_common.c_el_process_header_subpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_subpacket = type { i64, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %union.el_timestamp }
%union.el_timestamp = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %union.el_timestamp }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"UNKNOWN EVENT\00", align 1
@EL_CLASS__HEADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%s** Unexpected header CLASS %d TYPE %d, aborting\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"SYSTEM ERROR\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"SYSTEM EVENT\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ERROR HALT\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"LOGOUT FRAME\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"%s** Unknown header - CLASS %d TYPE %d, aborting\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s*** %s:\0A  CLASS %d, TYPE %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.el_subpacket* (%struct.el_subpacket*)* @el_process_header_subpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.el_subpacket* @el_process_header_subpacket(%struct.el_subpacket* %0) #0 {
  %2 = alloca %struct.el_subpacket*, align 8
  %3 = alloca %struct.el_subpacket*, align 8
  %4 = alloca %union.el_timestamp, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.el_subpacket* %0, %struct.el_subpacket** %3, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %9 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EL_CLASS__HEADER, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @err_print_prefix, align 4
  %15 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %16 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %21 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, i32, i8*, i32, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %14, i8* %19, i32 %22)
  store %struct.el_subpacket* null, %struct.el_subpacket** %2, align 8
  br label %117

24:                                               ; preds = %1
  %25 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %26 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %81 [
    i32 129, label %28
    i32 128, label %40
    i32 131, label %57
    i32 130, label %74
  ]

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %29 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %30 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %35 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = bitcast %union.el_timestamp* %4 to i32*
  store i32 0, i32* %39, align 4
  br label %92

40:                                               ; preds = %24
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  %41 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %42 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %7, align 4
  %46 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %47 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  %51 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %52 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = bitcast %union.el_timestamp* %4 to i8*
  %56 = bitcast %union.el_timestamp* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 8 %56, i64 4, i1 false)
  br label %92

57:                                               ; preds = %24
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  %58 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %59 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  %63 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %64 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %6, align 4
  %68 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %69 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = bitcast %union.el_timestamp* %4 to i8*
  %73 = bitcast %union.el_timestamp* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  br label %92

74:                                               ; preds = %24
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  %75 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %76 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %7, align 4
  store i32 1, i32* %6, align 4
  %80 = bitcast %union.el_timestamp* %4 to i32*
  store i32 0, i32* %80, align 4
  br label %92

81:                                               ; preds = %24
  %82 = load i32, i32* @err_print_prefix, align 4
  %83 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %84 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %89 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, i32, i8*, i32, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %82, i8* %87, i32 %90)
  store %struct.el_subpacket* null, %struct.el_subpacket** %2, align 8
  br label %117

92:                                               ; preds = %74, %57, %40, %28
  %93 = load i32, i32* @err_print_prefix, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %96 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %99 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, i32, i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %93, i8* %94, i32 %97, i32 %100)
  %102 = call i32 @el_print_timestamp(%union.el_timestamp* %4)
  %103 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @el_process_subpackets(%struct.el_subpacket* %103, i32 %104)
  %106 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %107 = ptrtoint %struct.el_subpacket* %106 to i64
  %108 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %109 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %107, %110
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %111, %113
  %115 = inttoptr i64 %114 to %struct.el_subpacket*
  store %struct.el_subpacket* %115, %struct.el_subpacket** %3, align 8
  %116 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  store %struct.el_subpacket* %116, %struct.el_subpacket** %2, align 8
  br label %117

117:                                              ; preds = %92, %81, %13
  %118 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  ret %struct.el_subpacket* %118
}

declare dso_local i32 @printk(i8*, i32, i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @el_print_timestamp(%union.el_timestamp*) #1

declare dso_local i32 @el_process_subpackets(%struct.el_subpacket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
