; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_libfc.c_fc_fc4_register_provider.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_libfc.c_fc_fc4_register_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc4_prov = type { i64 }

@FC_FC4_PROV_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fc_prov_mutex = common dso_local global i32 0, align 4
@fc_passive_prov = common dso_local global %struct.fc4_prov** null, align 8
@fc_active_prov = common dso_local global %struct.fc4_prov** null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_fc4_register_provider(i32 %0, %struct.fc4_prov* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc4_prov*, align 8
  %6 = alloca %struct.fc4_prov**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fc4_prov* %1, %struct.fc4_prov** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @FC_FC4_PROV_SIZE, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = call i32 @mutex_lock(i32* @fc_prov_mutex)
  %16 = load %struct.fc4_prov*, %struct.fc4_prov** %5, align 8
  %17 = getelementptr inbounds %struct.fc4_prov, %struct.fc4_prov* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load %struct.fc4_prov**, %struct.fc4_prov*** @fc_passive_prov, align 8
  br label %24

22:                                               ; preds = %14
  %23 = load %struct.fc4_prov**, %struct.fc4_prov*** @fc_active_prov, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi %struct.fc4_prov** [ %21, %20 ], [ %23, %22 ]
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.fc4_prov*, %struct.fc4_prov** %25, i64 %27
  store %struct.fc4_prov** %28, %struct.fc4_prov*** %6, align 8
  %29 = load %struct.fc4_prov**, %struct.fc4_prov*** %6, align 8
  %30 = load %struct.fc4_prov*, %struct.fc4_prov** %29, align 8
  %31 = icmp ne %struct.fc4_prov* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %38

35:                                               ; preds = %24
  %36 = load %struct.fc4_prov*, %struct.fc4_prov** %5, align 8
  %37 = load %struct.fc4_prov**, %struct.fc4_prov*** %6, align 8
  store %struct.fc4_prov* %36, %struct.fc4_prov** %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = call i32 @mutex_unlock(i32* @fc_prov_mutex)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
