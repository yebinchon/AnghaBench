; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_release_offload_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_release_offload_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i64, i32*, i32*, i32, i32, i32 }
%struct.cxgb4_lld_info = type { i32 }

@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@CTPF_HAS_ATID = common dso_local global i32 0, align 4
@CTPF_HAS_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*)* @release_offload_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_offload_resources(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca %struct.cxgb4_lld_info*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %4 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %5 = shl i32 1, %4
  %6 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %7 = shl i32 1, %6
  %8 = or i32 %5, %7
  %9 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %10 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %11 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %14 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %17 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @log_debug(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %9, i32 %12, i32 %15, i32 %18)
  %20 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %21 = call i32 @cxgbi_sock_free_cpl_skbs(%struct.cxgbi_sock* %20)
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %23 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %31 = call i32 @cxgbi_sock_purge_wr_queue(%struct.cxgbi_sock* %30)
  %32 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %33 = call i32 @cxgbi_sock_reset_wr_list(%struct.cxgbi_sock* %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %36 = call i32 @l2t_put(%struct.cxgbi_sock* %35)
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %38 = load i32, i32* @CTPF_HAS_ATID, align 4
  %39 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %43 = call i32 @free_atid(%struct.cxgbi_sock* %42)
  br label %67

44:                                               ; preds = %34
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %46 = load i32, i32* @CTPF_HAS_TID, align 4
  %47 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %51 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(i32* %52)
  store %struct.cxgb4_lld_info* %53, %struct.cxgb4_lld_info** %3, align 8
  %54 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %3, align 8
  %55 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %58 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cxgb4_remove_tid(i32 %56, i32 0, i32 %59)
  %61 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %62 = load i32, i32* @CTPF_HAS_TID, align 4
  %63 = call i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock* %61, i32 %62)
  %64 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %65 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %64)
  br label %66

66:                                               ; preds = %49, %44
  br label %67

67:                                               ; preds = %66, %41
  %68 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %69 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %68, i32 0, i32 3
  store i32* null, i32** %69, align 8
  %70 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %71 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_free_cpl_skbs(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_purge_wr_queue(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_reset_wr_list(%struct.cxgbi_sock*) #1

declare dso_local i32 @l2t_put(%struct.cxgbi_sock*) #1

declare dso_local i64 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @free_atid(%struct.cxgbi_sock*) #1

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(i32*) #1

declare dso_local i32 @cxgb4_remove_tid(i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
