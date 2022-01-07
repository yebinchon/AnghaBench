; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/extr_rio-scan.c_rio_enum_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/extr_rio-scan.c_rio_enum_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@RIO_HOST_DID_LOCK_CSR = common dso_local global i32 0, align 4
@next_destid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*)* @rio_enum_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_enum_host(%struct.rio_mport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rio_mport*, align 8
  %4 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %3, align 8
  %5 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %6 = load i32, i32* @RIO_HOST_DID_LOCK_CSR, align 4
  %7 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %8 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @rio_local_write_config_32(%struct.rio_mport* %5, i32 %6, i32 %9)
  %11 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %12 = load i32, i32* @RIO_HOST_DID_LOCK_CSR, align 4
  %13 = call i32 @rio_local_read_config_32(%struct.rio_mport* %11, i32 %12, i32* %4)
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 65535
  %16 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %17 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %23 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %24 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rio_local_set_device_id(%struct.rio_mport* %22, i32 %25)
  %27 = load i32, i32* @next_destid, align 4
  %28 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %29 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @next_destid, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @next_destid, align 4
  br label %35

35:                                               ; preds = %32, %21
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @rio_local_write_config_32(%struct.rio_mport*, i32, i32) #1

declare dso_local i32 @rio_local_read_config_32(%struct.rio_mport*, i32, i32*) #1

declare dso_local i32 @rio_local_set_device_id(%struct.rio_mport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
