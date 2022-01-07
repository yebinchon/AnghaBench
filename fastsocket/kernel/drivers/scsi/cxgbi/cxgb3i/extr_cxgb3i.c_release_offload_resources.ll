; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_release_offload_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_release_offload_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i64, %struct.TYPE_2__*, i32*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.t3cdev = type { i32 }

@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@CTPF_HAS_ATID = common dso_local global i32 0, align 4
@CTPF_HAS_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*)* @release_offload_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_offload_resources(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca %struct.t3cdev*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %4 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %5 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.t3cdev*
  store %struct.t3cdev* %9, %struct.t3cdev** %3, align 8
  %10 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %17 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %20 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %23 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @log_debug(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %27 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %29 = call i32 @cxgbi_sock_free_cpl_skbs(%struct.cxgbi_sock* %28)
  %30 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %31 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %34 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %39 = call i32 @cxgbi_sock_purge_wr_queue(%struct.cxgbi_sock* %38)
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %41 = call i32 @cxgbi_sock_reset_wr_list(%struct.cxgbi_sock* %40)
  br label %42

42:                                               ; preds = %37, %1
  %43 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %44 = call i32 @l2t_put(%struct.cxgbi_sock* %43)
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %46 = load i32, i32* @CTPF_HAS_ATID, align 4
  %47 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %51 = call i32 @free_atid(%struct.cxgbi_sock* %50)
  br label %71

52:                                               ; preds = %42
  %53 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %54 = load i32, i32* @CTPF_HAS_TID, align 4
  %55 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %59 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %60 = bitcast %struct.cxgbi_sock* %59 to i8*
  %61 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %62 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @cxgb3_remove_tid(%struct.t3cdev* %58, i8* %60, i32 %63)
  %65 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %66 = load i32, i32* @CTPF_HAS_TID, align 4
  %67 = call i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock* %65, i32 %66)
  %68 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %69 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %68)
  br label %70

70:                                               ; preds = %57, %52
  br label %71

71:                                               ; preds = %70, %49
  %72 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %73 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %72, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %75 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %74, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %75, align 8
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_free_cpl_skbs(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_purge_wr_queue(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_reset_wr_list(%struct.cxgbi_sock*) #1

declare dso_local i32 @l2t_put(%struct.cxgbi_sock*) #1

declare dso_local i64 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @free_atid(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgb3_remove_tid(%struct.t3cdev*, i8*, i32) #1

declare dso_local i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
