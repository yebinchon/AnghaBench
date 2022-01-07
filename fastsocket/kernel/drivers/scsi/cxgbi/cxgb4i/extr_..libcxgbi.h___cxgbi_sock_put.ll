; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_..libcxgbi.h___cxgbi_sock_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_..libcxgbi.h___cxgbi_sock_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s, put csk 0x%p, ref %u-1.\0A\00", align 1
@cxgbi_sock_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cxgbi_sock*)* @__cxgbi_sock_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cxgbi_sock_put(i8* %0, %struct.cxgbi_sock* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cxgbi_sock*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.cxgbi_sock* %1, %struct.cxgbi_sock** %4, align 8
  %5 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %6 = shl i32 1, %5
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %9 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %10 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  %13 = call i32 @log_debug(i32 %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %7, %struct.cxgbi_sock* %8, i32 %12)
  %14 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %15 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %14, i32 0, i32 0
  %16 = load i32, i32* @cxgbi_sock_free, align 4
  %17 = call i32 @kref_put(%struct.TYPE_2__* %15, i32 %16)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, i8*, %struct.cxgbi_sock*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kref_put(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
