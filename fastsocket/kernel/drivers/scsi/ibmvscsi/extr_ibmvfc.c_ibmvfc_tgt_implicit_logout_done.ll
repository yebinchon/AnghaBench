; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_implicit_logout_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_implicit_logout_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.TYPE_3__*, %struct.ibmvfc_host*, %struct.ibmvfc_target* }
%struct.TYPE_3__ = type { %struct.ibmvfc_implicit_logout }
%struct.ibmvfc_implicit_logout = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ibmvfc_host = type { i64, i32, i32 }
%struct.ibmvfc_target = type { i64, i64, i32 }

@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Implicit Logout succeeded\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Implicit Logout failed: rc=0x%02X\0A\00", align 1
@IBMVFC_HOST_ACTION_TGT_INIT = common dso_local global i64 0, align 8
@ibmvfc_tgt_send_plogi = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_QUERY_TGTS = common dso_local global i64 0, align 8
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_tgt_implicit_logout_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_implicit_logout_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_implicit_logout*, align 8
  %6 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %7 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %7, i32 0, i32 2
  %9 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %8, align 8
  store %struct.ibmvfc_target* %9, %struct.ibmvfc_target** %3, align 8
  %10 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %11 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %10, i32 0, i32 1
  %12 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %11, align 8
  store %struct.ibmvfc_host* %12, %struct.ibmvfc_host** %4, align 8
  %13 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.ibmvfc_implicit_logout* %16, %struct.ibmvfc_implicit_logout** %5, align 8
  %17 = load %struct.ibmvfc_implicit_logout*, %struct.ibmvfc_implicit_logout** %5, align 8
  %18 = getelementptr inbounds %struct.ibmvfc_implicit_logout, %struct.ibmvfc_implicit_logout* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %22 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %26 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %25)
  %27 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %28 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %29 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %43 [
    i32 128, label %31
    i32 130, label %34
    i32 129, label %42
  ]

31:                                               ; preds = %1
  %32 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %33 = call i32 @tgt_dbg(%struct.ibmvfc_target* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %47

34:                                               ; preds = %1
  %35 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %36 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %35, i32 0, i32 2
  %37 = load i32, i32* @ibmvfc_release_tgt, align 4
  %38 = call i32 @kref_put(i32* %36, i32 %37)
  %39 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %40 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %39, i32 0, i32 1
  %41 = call i32 @wake_up(i32* %40)
  br label %84

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %1, %42
  %44 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @tgt_err(%struct.ibmvfc_target* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %31
  %48 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %49 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IBMVFC_HOST_ACTION_TGT_INIT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %55 = load i32, i32* @ibmvfc_tgt_send_plogi, align 4
  %56 = call i32 @ibmvfc_init_tgt(%struct.ibmvfc_target* %54, i32 %55)
  br label %76

57:                                               ; preds = %47
  %58 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %59 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IBMVFC_HOST_ACTION_QUERY_TGTS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %65 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %68 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %73 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %74 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %63, %57
  br label %76

76:                                               ; preds = %75, %53
  %77 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %78 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %77, i32 0, i32 2
  %79 = load i32, i32* @ibmvfc_release_tgt, align 4
  %80 = call i32 @kref_put(i32* %78, i32 %79)
  %81 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %82 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %81, i32 0, i32 1
  %83 = call i32 @wake_up(i32* %82)
  br label %84

84:                                               ; preds = %76, %34
  ret void
}

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @tgt_err(%struct.ibmvfc_target*, i8*, i32) #1

declare dso_local i32 @ibmvfc_init_tgt(%struct.ibmvfc_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
