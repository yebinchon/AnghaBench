; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_rport_online_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_rport_online_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32 }

@BFAD_PORT_ONLINE = common dso_local global i32 0, align 4
@bfa_linkup_delay = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@BFAD_RPORT_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_rport_online_wait(%struct.bfad_s* %0) #0 {
  %2 = alloca %struct.bfad_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %2, align 8
  store i32 10, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BFAD_PORT_ONLINE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @bfa_linkup_delay, align 4
  %15 = icmp slt i32 %13, %14
  br label %16

16:                                               ; preds = %12, %5
  %17 = phi i1 [ false, %5 ], [ %15, %12 ]
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  %19 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %20 = call i32 @set_current_state(i32 %19)
  %21 = load i32, i32* @HZ, align 4
  %22 = call i32 @schedule_timeout(i32 %21)
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %5

26:                                               ; preds = %16
  %27 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BFAD_PORT_ONLINE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @bfa_linkup_delay, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @bfa_linkup_delay, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %61, %41
  %44 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %45 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BFAD_RPORT_ONLINE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br label %54

54:                                               ; preds = %50, %43
  %55 = phi i1 [ false, %43 ], [ %53, %50 ]
  br i1 %55, label %56, label %64

56:                                               ; preds = %54
  %57 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %58 = call i32 @set_current_state(i32 %57)
  %59 = load i32, i32* @HZ, align 4
  %60 = call i32 @schedule_timeout(i32 %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %43

64:                                               ; preds = %54
  %65 = load i32, i32* %4, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %69 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @BFAD_RPORT_ONLINE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %76 = call i32 @set_current_state(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @HZ, align 4
  %79 = mul nsw i32 %77, %78
  %80 = call i32 @schedule_timeout(i32 %79)
  br label %81

81:                                               ; preds = %74, %67, %64
  br label %82

82:                                               ; preds = %81, %26
  ret void
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
