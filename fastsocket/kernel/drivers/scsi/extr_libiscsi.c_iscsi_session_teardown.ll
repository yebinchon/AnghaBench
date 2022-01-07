; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_session_teardown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_session_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { %struct.TYPE_2__*, %struct.iscsi_session* }
%struct.TYPE_2__ = type { %struct.module* }
%struct.module = type { i32 }
%struct.iscsi_session = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_session_teardown(%struct.iscsi_cls_session* %0) #0 {
  %2 = alloca %struct.iscsi_cls_session*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %2, align 8
  %6 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %6, i32 0, i32 1
  %8 = load %struct.iscsi_session*, %struct.iscsi_session** %7, align 8
  store %struct.iscsi_session* %8, %struct.iscsi_session** %3, align 8
  %9 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %10 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.module*, %struct.module** %12, align 8
  store %struct.module* %13, %struct.module** %4, align 8
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %14, i32 0, i32 14
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %5, align 8
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %17, i32 0, i32 13
  %19 = call i32 @iscsi_pool_free(i32* %18)
  %20 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %21 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @kfree(i32 %22)
  %24 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %25 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kfree(i32 %26)
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %29 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @kfree(i32 %30)
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %33 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kfree(i32 %34)
  %36 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %37 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @kfree(i32 %38)
  %40 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %41 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kfree(i32 %42)
  %44 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %45 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @kfree(i32 %46)
  %48 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %49 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kfree(i32 %50)
  %52 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %53 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @kfree(i32 %54)
  %56 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %57 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kfree(i32 %58)
  %60 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %61 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @kfree(i32 %62)
  %64 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %65 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @kfree(i32 %66)
  %68 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %69 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @kfree(i32 %70)
  %72 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %73 = call i32 @iscsi_destroy_session(%struct.iscsi_cls_session* %72)
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %75 = call i32 @iscsi_host_dec_session_cnt(%struct.Scsi_Host* %74)
  %76 = load %struct.module*, %struct.module** %4, align 8
  %77 = call i32 @module_put(%struct.module* %76)
  ret void
}

declare dso_local i32 @iscsi_pool_free(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iscsi_destroy_session(%struct.iscsi_cls_session*) #1

declare dso_local i32 @iscsi_host_dec_session_cnt(%struct.Scsi_Host*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
