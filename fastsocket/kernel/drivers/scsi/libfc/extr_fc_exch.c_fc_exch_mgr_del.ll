; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_mgr_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_mgr_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch_mgr_anchor = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@fc_exch_mgr_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_exch_mgr_del(%struct.fc_exch_mgr_anchor* %0) #0 {
  %2 = alloca %struct.fc_exch_mgr_anchor*, align 8
  store %struct.fc_exch_mgr_anchor* %0, %struct.fc_exch_mgr_anchor** %2, align 8
  %3 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %2, align 8
  %4 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %3, i32 0, i32 1
  %5 = call i32 @list_del(i32* %4)
  %6 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %2, align 8
  %7 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* @fc_exch_mgr_destroy, align 4
  %11 = call i32 @kref_put(i32* %9, i32 %10)
  %12 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %2, align 8
  %13 = call i32 @kfree(%struct.fc_exch_mgr_anchor* %12)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kfree(%struct.fc_exch_mgr_anchor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
