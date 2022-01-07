; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_need_active_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_need_active_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.cxgbi_sock*)*, i32 (%struct.cxgbi_sock*)* }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@CTP_ACTIVE_OPEN = common dso_local global i64 0, align 8
@CTPF_ACTIVE_CLOSE_NEEDED = common dso_local global i32 0, align 4
@CTP_ESTABLISHED = common dso_local global i64 0, align 8
@CTP_ACTIVE_CLOSE = common dso_local global i32 0, align 4
@CTP_PASSIVE_CLOSE = common dso_local global i64 0, align 8
@CTP_CLOSE_WAIT_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*)* @need_active_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @need_active_close(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %6 = shl i32 1, %5
  %7 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %9 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %12 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %15 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @log_debug(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %7, i64 %10, i32 %13, i32 %16)
  %18 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %19 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %18, i32 0, i32 1
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %22 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dst_confirm(i32 %23)
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 3
  %27 = call i32 @skb_queue_len(i32* %26)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %29 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %28, i32 0, i32 3
  %30 = call i32 @__skb_queue_purge(i32* %29)
  %31 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %32 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CTP_ACTIVE_OPEN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %38 = load i32, i32* @CTPF_ACTIVE_CLOSE_NEEDED, align 4
  %39 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %37, i32 %38)
  br label %62

40:                                               ; preds = %1
  %41 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %42 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CTP_ESTABLISHED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  %47 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %48 = load i32, i32* @CTP_ACTIVE_CLOSE, align 4
  %49 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %47, i32 %48)
  br label %61

50:                                               ; preds = %40
  %51 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %52 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CTP_PASSIVE_CLOSE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  %57 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %58 = load i32, i32* @CTP_CLOSE_WAIT_2, align 4
  %59 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %50
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %36
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %70 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32 (%struct.cxgbi_sock*)*, i32 (%struct.cxgbi_sock*)** %72, align 8
  %74 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %75 = call i32 %73(%struct.cxgbi_sock* %74)
  br label %84

76:                                               ; preds = %65
  %77 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %78 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.cxgbi_sock*)*, i32 (%struct.cxgbi_sock*)** %80, align 8
  %82 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %83 = call i32 %81(%struct.cxgbi_sock* %82)
  br label %84

84:                                               ; preds = %76, %68
  br label %85

85:                                               ; preds = %84, %62
  %86 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %87 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %86, i32 0, i32 1
  %88 = call i32 @spin_unlock_bh(i32* %87)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dst_confirm(i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_set_state(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
