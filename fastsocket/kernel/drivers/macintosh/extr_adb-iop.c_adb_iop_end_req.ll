; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adb-iop.c_adb_iop_end_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adb-iop.c_adb_iop_end_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i32 (%struct.adb_request*)*, i32 }

@current_req = common dso_local global i32 0, align 4
@adb_iop_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adb_request*, i32)* @adb_iop_end_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adb_iop_end_req(%struct.adb_request* %0, i32 %1) #0 {
  %3 = alloca %struct.adb_request*, align 8
  %4 = alloca i32, align 4
  store %struct.adb_request* %0, %struct.adb_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %6 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %8 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* @current_req, align 4
  %10 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %11 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %10, i32 0, i32 1
  %12 = load i32 (%struct.adb_request*)*, i32 (%struct.adb_request*)** %11, align 8
  %13 = icmp ne i32 (%struct.adb_request*)* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %16 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %15, i32 0, i32 1
  %17 = load i32 (%struct.adb_request*)*, i32 (%struct.adb_request*)** %16, align 8
  %18 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %19 = call i32 %17(%struct.adb_request* %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* @adb_iop_state, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
