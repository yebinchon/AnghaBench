; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_do_abort_rpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_do_abort_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_abort_rpl_rss = type { i64 }
%struct.cxgbi_sock = type { i64, i32 }

@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"status 0x%x, csk 0x%p, s %u, 0x%lx.\0A\00", align 1
@CPL_ERR_ABORT_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3cdev*, %struct.sk_buff*, i8*)* @do_abort_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_abort_rpl(%struct.t3cdev* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cpl_abort_rpl_rss*, align 8
  %8 = alloca %struct.cxgbi_sock*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.cpl_abort_rpl_rss* @cplhdr(%struct.sk_buff* %9)
  store %struct.cpl_abort_rpl_rss* %10, %struct.cpl_abort_rpl_rss** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.cxgbi_sock*
  store %struct.cxgbi_sock* %12, %struct.cxgbi_sock** %8, align 8
  %13 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %16 = shl i32 1, %15
  %17 = or i32 %14, %16
  %18 = load %struct.cpl_abort_rpl_rss*, %struct.cpl_abort_rpl_rss** %7, align 8
  %19 = getelementptr inbounds %struct.cpl_abort_rpl_rss, %struct.cpl_abort_rpl_rss* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %23 = icmp ne %struct.cxgbi_sock* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  %31 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %32 = icmp ne %struct.cxgbi_sock* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %35 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i64 [ %36, %33 ], [ 0, %37 ]
  %40 = call i32 @log_debug(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %20, %struct.cxgbi_sock* %21, i32 %30, i64 %39)
  %41 = load %struct.cpl_abort_rpl_rss*, %struct.cpl_abort_rpl_rss** %7, align 8
  %42 = getelementptr inbounds %struct.cpl_abort_rpl_rss, %struct.cpl_abort_rpl_rss* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CPL_ERR_ABORT_FAILED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %54

47:                                               ; preds = %38
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %49 = icmp ne %struct.cxgbi_sock* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %52 = call i32 @cxgbi_sock_rcv_abort_rpl(%struct.cxgbi_sock* %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @__kfree_skb(%struct.sk_buff* %55)
  ret i32 0
}

declare dso_local %struct.cpl_abort_rpl_rss* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @log_debug(i32, i8*, i64, %struct.cxgbi_sock*, i32, i64) #1

declare dso_local i32 @cxgbi_sock_rcv_abort_rpl(%struct.cxgbi_sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
