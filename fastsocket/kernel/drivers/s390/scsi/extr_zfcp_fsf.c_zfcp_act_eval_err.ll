; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_act_eval_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_act_eval_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"WWPN\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DID\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"LUN\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Access denied according to ACT rule type %s, rule %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_adapter*, i32)* @zfcp_act_eval_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_act_eval_err(%struct.zfcp_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [5 x i8*], align 16
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 16
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 65535
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false)
  %15 = bitcast i8* %14 to [5 x i8*]*
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %20, align 16
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %26 = call i64 @ARRAY_SIZE(i8** %25)
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* %35, i64 %36)
  br label %38

38:                                               ; preds = %28, %23, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @dev_warn(i32*, i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
