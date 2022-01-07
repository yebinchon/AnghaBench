; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_ras.c_fwnmi_get_errinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_ras.c_fwnmi_get_errinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.rtas_error_log = type { i32 }
%struct.pt_regs = type { i64* }

@rtas = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@mce_data_buf = common dso_local global i64 0, align 8
@RTAS_ERROR_LOG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"FWNMI: corrupt r3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtas_error_log* (%struct.pt_regs*)* @fwnmi_get_errinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtas_error_log* @fwnmi_get_errinfo(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.rtas_error_log*, align 8
  %5 = alloca i64*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 3
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  store %struct.rtas_error_log* null, %struct.rtas_error_log** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp uge i64 %11, 28672
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = icmp ult i64 %14, 524272
  br i1 %15, label %28, label %16

16:                                               ; preds = %13, %1
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rtas, i32 0, i32 0), align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rtas, i32 0, i32 0), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rtas, i32 0, i32 1), align 8
  %24 = sext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = sub i64 %25, 16
  %27 = icmp ult i64 %21, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %20, %13
  %29 = load i64, i64* %3, align 8
  %30 = call i64* @__va(i64 %29)
  store i64* %30, i64** %5, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 3
  store i64 %33, i64* %37, align 8
  %38 = load i64, i64* @mce_data_buf, align 8
  %39 = load i32, i32* @RTAS_ERROR_LOG_MAX, align 4
  %40 = call i32 @memset(i64 %38, i32 0, i32 %39)
  %41 = load i64, i64* @mce_data_buf, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = bitcast i64* %43 to i8*
  %45 = load i32, i32* @RTAS_ERROR_LOG_MAX, align 4
  %46 = call i32 @memcpy(i64 %41, i8* %44, i32 %45)
  %47 = load i64, i64* @mce_data_buf, align 8
  %48 = inttoptr i64 %47 to %struct.rtas_error_log*
  store %struct.rtas_error_log* %48, %struct.rtas_error_log** %4, align 8
  br label %51

49:                                               ; preds = %20, %16
  %50 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %28
  %52 = load %struct.rtas_error_log*, %struct.rtas_error_log** %4, align 8
  ret %struct.rtas_error_log* %52
}

declare dso_local i64* @__va(i64) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
