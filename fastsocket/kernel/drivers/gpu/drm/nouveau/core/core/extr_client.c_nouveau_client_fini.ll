; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_client.c_nouveau_client_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_client.c_nouveau_client_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_client = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"fini\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@__const.nouveau_client_fini.name = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"%s running\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s completed with %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_client_fini(%struct.nouveau_client* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i32, align 4
  store %struct.nouveau_client* %0, %struct.nouveau_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([2 x i8*]* @__const.nouveau_client_fini.name to i8*), i64 16, i1 false)
  %8 = load %struct.nouveau_client*, %struct.nouveau_client** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (%struct.nouveau_client*, i8*, i8*, ...) @nv_debug(%struct.nouveau_client* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %14 = load %struct.nouveau_client*, %struct.nouveau_client** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @nouveau_handle_fini(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nouveau_client*, %struct.nouveau_client** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (%struct.nouveau_client*, i8*, i8*, ...) @nv_debug(%struct.nouveau_client* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nv_debug(%struct.nouveau_client*, i8*, i8*, ...) #2

declare dso_local i32 @nouveau_handle_fini(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
