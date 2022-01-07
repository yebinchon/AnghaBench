; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_scsi_host_get_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_scsi_host_get_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32, %struct.request*, i32 }
%struct.request = type { %struct.scsi_tgt_cmd*, i32, i32, %struct.scsi_cmnd*, i32 }
%struct.scsi_tgt_cmd = type { %struct.request* }
%struct.Scsi_Host = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@scsi_tgt_cmd_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@REQ_TYPE_SPECIAL = common dso_local global i32 0, align 4
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_cmnd* @scsi_host_get_command(%struct.Scsi_Host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca %struct.scsi_tgt_cmd*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DMA_TO_DEVICE, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = call i32 @get_device(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %4, align 8
  br label %92

21:                                               ; preds = %3
  %22 = load i32, i32* @scsi_tgt_cmd_cache, align 4
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.scsi_tgt_cmd* @kmem_cache_alloc(i32 %22, i32 %23)
  store %struct.scsi_tgt_cmd* %24, %struct.scsi_tgt_cmd** %11, align 8
  %25 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %11, align 8
  %26 = icmp ne %struct.scsi_tgt_cmd* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %88

28:                                               ; preds = %21
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.request* @blk_get_request(i32 %31, i32 %35, i32 %36)
  store %struct.request* %37, %struct.request** %9, align 8
  %38 = load %struct.request*, %struct.request** %9, align 8
  %39 = icmp ne %struct.request* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %84

41:                                               ; preds = %28
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.scsi_cmnd* @__scsi_get_command(%struct.Scsi_Host* %42, i32 %43)
  store %struct.scsi_cmnd* %44, %struct.scsi_cmnd** %10, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %46 = icmp ne %struct.scsi_cmnd* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %81

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @jiffies, align 4
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.request*, %struct.request** %9, align 8
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 2
  store %struct.request* %55, %struct.request** %57, align 8
  %58 = load %struct.request*, %struct.request** %9, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %64 = load %struct.request*, %struct.request** %9, align 8
  %65 = getelementptr inbounds %struct.request, %struct.request* %64, i32 0, i32 3
  store %struct.scsi_cmnd* %63, %struct.scsi_cmnd** %65, align 8
  %66 = load i32, i32* @REQ_TYPE_SPECIAL, align 4
  %67 = load %struct.request*, %struct.request** %9, align 8
  %68 = getelementptr inbounds %struct.request, %struct.request* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %70 = load %struct.request*, %struct.request** %9, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %11, align 8
  %75 = load %struct.request*, %struct.request** %9, align 8
  %76 = getelementptr inbounds %struct.request, %struct.request* %75, i32 0, i32 0
  store %struct.scsi_tgt_cmd* %74, %struct.scsi_tgt_cmd** %76, align 8
  %77 = load %struct.request*, %struct.request** %9, align 8
  %78 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %11, align 8
  %79 = getelementptr inbounds %struct.scsi_tgt_cmd, %struct.scsi_tgt_cmd* %78, i32 0, i32 0
  store %struct.request* %77, %struct.request** %79, align 8
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  store %struct.scsi_cmnd* %80, %struct.scsi_cmnd** %4, align 8
  br label %92

81:                                               ; preds = %47
  %82 = load %struct.request*, %struct.request** %9, align 8
  %83 = call i32 @blk_put_request(%struct.request* %82)
  br label %84

84:                                               ; preds = %81, %40
  %85 = load i32, i32* @scsi_tgt_cmd_cache, align 4
  %86 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %11, align 8
  %87 = call i32 @kmem_cache_free(i32 %85, %struct.scsi_tgt_cmd* %86)
  br label %88

88:                                               ; preds = %84, %27
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 0
  %91 = call i32 @put_device(i32* %90)
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %4, align 8
  br label %92

92:                                               ; preds = %88, %48, %20
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  ret %struct.scsi_cmnd* %93
}

declare dso_local i32 @get_device(i32*) #1

declare dso_local %struct.scsi_tgt_cmd* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local %struct.scsi_cmnd* @__scsi_get_command(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.scsi_tgt_cmd*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
