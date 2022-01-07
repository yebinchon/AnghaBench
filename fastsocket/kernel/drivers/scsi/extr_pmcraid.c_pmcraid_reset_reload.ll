; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reset_reload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reset_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i64, i32, i32, %struct.TYPE_3__*, i64, i32, %struct.pmcraid_cmd*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.pmcraid_cmd = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"reset_reload: reset is already in progress\0A\00", align 1
@IOA_STATE_DEAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"reset_reload: IOA is dead\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"reset_reload: proceeding with reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"no free cmnd for reset_reload\0A\00", align 1
@SHUTDOWN_NORMAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"reset_reload: initiating reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"reset_reload: waiting for reset to complete\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"reset_reload: reset is complete !!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*, i64, i64)* @pmcraid_reset_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_reset_reload(%struct.pmcraid_instance* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmcraid_instance*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pmcraid_cmd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.pmcraid_cmd* null, %struct.pmcraid_cmd** %8, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %12 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %19 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %72

22:                                               ; preds = %3
  %23 = call i32 @pmcraid_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %25 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32 %28, i64 %29)
  %31 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %32 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %35 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_event(i32 %33, i32 %39)
  %41 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %42 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_lock_irqsave(i32 %45, i64 %46)
  %48 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %49 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IOA_STATE_DEAD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %22
  %54 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %55 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32 %58, i64 %59)
  %61 = call i32 @pmcraid_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %147

63:                                               ; preds = %22
  %64 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %65 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %69, %63
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %3
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %145

75:                                               ; preds = %72
  %76 = call i32 @pmcraid_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %78 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %77, i32 0, i32 3
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = call i32 @scsi_block_requests(%struct.TYPE_3__* %79)
  %81 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %82 = call %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance* %81)
  store %struct.pmcraid_cmd* %82, %struct.pmcraid_cmd** %8, align 8
  %83 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %8, align 8
  %84 = icmp eq %struct.pmcraid_cmd* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %75
  %86 = call i32 @pmcraid_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %88 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32 %91, i64 %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %147

95:                                               ; preds = %75
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @SHUTDOWN_NORMAL, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %101 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %100, i32 0, i32 1
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %95
  %103 = load i64, i64* %6, align 8
  %104 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %105 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %104, i32 0, i32 7
  store i64 %103, i64* %105, align 8
  %106 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %8, align 8
  %107 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %108 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %107, i32 0, i32 6
  store %struct.pmcraid_cmd* %106, %struct.pmcraid_cmd** %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %111 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = call i32 @pmcraid_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %113 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %8, align 8
  %114 = call i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd* %113)
  %115 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %116 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %115, i32 0, i32 3
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32 %119, i64 %120)
  %122 = call i32 @pmcraid_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %123 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %124 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %127 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @wait_event(i32 %125, i32 %131)
  %133 = call i32 @pmcraid_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %134 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %135 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %134, i32 0, i32 3
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = call i32 @scsi_unblock_requests(%struct.TYPE_3__* %136)
  %138 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %139 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %7, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  br label %144

144:                                              ; preds = %143, %102
  br label %145

145:                                              ; preds = %144, %72
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %85, %53
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @pmcraid_info(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @scsi_block_requests(%struct.TYPE_3__*) #1

declare dso_local %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_err(i8*) #1

declare dso_local i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd*) #1

declare dso_local i32 @scsi_unblock_requests(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
