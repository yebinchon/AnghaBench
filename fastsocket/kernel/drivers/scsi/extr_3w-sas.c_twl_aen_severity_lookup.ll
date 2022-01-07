; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_aen_severity_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_aen_severity_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TW_AEN_SEVERITY_ERROR = common dso_local global i64 0, align 8
@TW_AEN_SEVERITY_DEBUG = common dso_local global i64 0, align 8
@twl_aen_severity_table = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8)* @twl_aen_severity_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @twl_aen_severity_lookup(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  store i8 %0, i8* %2, align 1
  store i8* null, i8** %3, align 8
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i32
  %6 = load i64, i64* @TW_AEN_SEVERITY_ERROR, align 8
  %7 = trunc i64 %6 to i8
  %8 = zext i8 %7 to i32
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i32
  %13 = load i64, i64* @TW_AEN_SEVERITY_DEBUG, align 8
  %14 = trunc i64 %13 to i8
  %15 = zext i8 %14 to i32
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1
  br label %24

18:                                               ; preds = %10
  %19 = load i8**, i8*** @twl_aen_severity_table, align 8
  %20 = load i8, i8* %2, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i8*, i8** %3, align 8
  ret i8* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
