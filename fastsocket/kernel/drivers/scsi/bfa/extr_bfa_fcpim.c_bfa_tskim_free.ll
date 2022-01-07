; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_tskim_s = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_tskim_free(%struct.bfa_tskim_s* %0) #0 {
  %2 = alloca %struct.bfa_tskim_s*, align 8
  store %struct.bfa_tskim_s* %0, %struct.bfa_tskim_s** %2, align 8
  %3 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %2, align 8
  %8 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %7, i32 0, i32 1
  %9 = call i32 @bfa_q_is_on_q_func(i32* %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %2, align 8
  %15 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %2, align 8
  %18 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %17, i32 0, i32 1
  %19 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %2, align 8
  %20 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @list_add_tail(i32* %18, i32* %22)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_q_is_on_q_func(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
