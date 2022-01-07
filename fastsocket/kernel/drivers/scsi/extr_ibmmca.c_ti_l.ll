; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ibmmca.c_ti_l.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ibmmca.c_ti_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ti_l.hex = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@ti_l.answer = internal global [2 x i8] zeroinitializer, align 1
@MAX_LOG_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ti_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ti_l(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [16 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = bitcast [16 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.ti_l.hex, i32 0, i32 0), i64 16, i1 false)
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ti_l.answer, i64 0, i64 1), align 1
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @MAX_LOG_DEV, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ti_l.answer, i64 0, i64 0), align 1
  br label %14

13:                                               ; preds = %1
  store i8 45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ti_l.answer, i64 0, i64 0), align 1
  br label %14

14:                                               ; preds = %13, %8
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ti_l.answer, i32 0, i32 0)
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
