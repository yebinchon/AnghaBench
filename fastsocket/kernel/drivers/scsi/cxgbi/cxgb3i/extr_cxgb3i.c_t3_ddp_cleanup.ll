; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_t3_ddp_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_t3_ddp_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i64 }
%struct.t3cdev = type { i32* }

@.str = private unnamed_addr constant [37 x i8] c"t3dev 0x%p, ulp_iscsi no more user.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*)* @t3_ddp_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t3_ddp_cleanup(%struct.cxgbi_device* %0) #0 {
  %2 = alloca %struct.cxgbi_device*, align 8
  %3 = alloca %struct.t3cdev*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %2, align 8
  %4 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %5 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.t3cdev*
  store %struct.t3cdev* %7, %struct.t3cdev** %3, align 8
  %8 = load %struct.cxgbi_device*, %struct.cxgbi_device** %2, align 8
  %9 = call i64 @cxgbi_ddp_cleanup(%struct.cxgbi_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.t3cdev* %12)
  %14 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %15 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %11, %1
  ret void
}

declare dso_local i64 @cxgbi_ddp_cleanup(%struct.cxgbi_device*) #1

declare dso_local i32 @pr_info(i8*, %struct.t3cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
