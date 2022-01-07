; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv.c_hv_post_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv.c_hv_post_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hv_connection_id = type { i32 }
%struct.hv_input_post_message = type { i32, i64, i64, %union.hv_connection_id }

@HV_MESSAGE_PAYLOAD_BYTE_COUNT = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HV_HYPERCALL_PARAM_ALIGN = common dso_local global i32 0, align 4
@HVCALL_POST_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hv_post_message(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.hv_connection_id, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hv_input_post_message*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = getelementptr inbounds %union.hv_connection_id, %union.hv_connection_id* %6, i32 0, i32 0
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @HV_MESSAGE_PAYLOAD_BYTE_COUNT, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EMSGSIZE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %58

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i64 @kmalloc(i32 40, i32 %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %58

28:                                               ; preds = %20
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* @HV_HYPERCALL_PARAM_ALIGN, align 4
  %31 = call i64 @ALIGN(i64 %29, i32 %30)
  %32 = inttoptr i64 %31 to %struct.hv_input_post_message*
  store %struct.hv_input_post_message* %32, %struct.hv_input_post_message** %10, align 8
  %33 = load %struct.hv_input_post_message*, %struct.hv_input_post_message** %10, align 8
  %34 = getelementptr inbounds %struct.hv_input_post_message, %struct.hv_input_post_message* %33, i32 0, i32 3
  %35 = bitcast %union.hv_connection_id* %34 to i8*
  %36 = bitcast %union.hv_connection_id* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.hv_input_post_message*, %struct.hv_input_post_message** %10, align 8
  %39 = getelementptr inbounds %struct.hv_input_post_message, %struct.hv_input_post_message* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.hv_input_post_message*, %struct.hv_input_post_message** %10, align 8
  %42 = getelementptr inbounds %struct.hv_input_post_message, %struct.hv_input_post_message* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.hv_input_post_message*, %struct.hv_input_post_message** %10, align 8
  %44 = getelementptr inbounds %struct.hv_input_post_message, %struct.hv_input_post_message* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @memcpy(i8* %46, i8* %47, i64 %48)
  %50 = load i32, i32* @HVCALL_POST_MESSAGE, align 4
  %51 = load %struct.hv_input_post_message*, %struct.hv_input_post_message** %10, align 8
  %52 = call i32 @do_hypercall(i32 %50, %struct.hv_input_post_message* %51, i32* null)
  %53 = and i32 %52, 65535
  store i32 %53, i32* %11, align 4
  %54 = load i64, i64* %12, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @kfree(i8* %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %28, %25, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @do_hypercall(i32, %struct.hv_input_post_message*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
