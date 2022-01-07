; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_cb_sfp_state_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_cb_sfp_state_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sfp_s = type { i32 (i32, i32)*, i64, i64, i32, i32, i32* }

@BFA_PORT_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_sfp_s*)* @bfa_cb_sfp_state_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_cb_sfp_state_query(%struct.bfa_sfp_s* %0) #0 {
  %2 = alloca %struct.bfa_sfp_s*, align 8
  store %struct.bfa_sfp_s* %0, %struct.bfa_sfp_s** %2, align 8
  %3 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %4 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @bfa_trc(%struct.bfa_sfp_s* %3, i64 %6)
  %8 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %14 = call i32 @bfa_sfp_media_get(%struct.bfa_sfp_s* %13)
  %15 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %16 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %15, i32 0, i32 0
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %16, align 8
  %18 = icmp ne i32 (i32, i32)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %21 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %20, i32 0, i32 0
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %27 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %22(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %19, %12
  %31 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %32 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %31, i32 0, i32 5
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %35 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %33
  %39 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %40 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %41 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @bfa_sfp_speed_valid(%struct.bfa_sfp_s* %39, i64 %42)
  %44 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %45 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %47 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %46, i32 0, i32 0
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = icmp ne i32 (i32, i32)* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %38
  %51 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %52 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %51, i32 0, i32 0
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %55 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %58 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %53(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %50, %38
  %62 = load i64, i64* @BFA_PORT_SPEED_UNKNOWN, align 8
  %63 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %64 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %33
  %66 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %67 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %69 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %68, i32 0, i32 0
  store i32 (i32, i32)* null, i32 (i32, i32)** %69, align 8
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_sfp_s*, i64) #1

declare dso_local i32 @bfa_sfp_media_get(%struct.bfa_sfp_s*) #1

declare dso_local i32 @bfa_sfp_speed_valid(%struct.bfa_sfp_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
