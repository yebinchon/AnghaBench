; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_disc = type { i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Restarting discovery\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_disc*)* @fc_disc_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_disc_restart(%struct.fc_disc* %0) #0 {
  %2 = alloca %struct.fc_disc*, align 8
  store %struct.fc_disc* %0, %struct.fc_disc** %2, align 8
  %3 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %4 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %30

8:                                                ; preds = %1
  %9 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %10 = call i32 @FC_DISC_DBG(%struct.fc_disc* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %12 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %14 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %30

18:                                               ; preds = %8
  %19 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %20 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 2
  %23 = or i32 %22, 1
  %24 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %25 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %27 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %29 = call i32 @fc_disc_gpn_ft_req(%struct.fc_disc* %28)
  br label %30

30:                                               ; preds = %18, %17, %7
  ret void
}

declare dso_local i32 @FC_DISC_DBG(%struct.fc_disc*, i8*) #1

declare dso_local i32 @fc_disc_gpn_ft_req(%struct.fc_disc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
