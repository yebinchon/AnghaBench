; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_setup_cmd_wqe_template.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_setup_cmd_wqe_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_cmd = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2i_cmd*)* @bnx2i_setup_cmd_wqe_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_setup_cmd_wqe_template(%struct.bnx2i_cmd* %0) #0 {
  %2 = alloca %struct.bnx2i_cmd*, align 8
  store %struct.bnx2i_cmd* %0, %struct.bnx2i_cmd** %2, align 8
  %3 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %3, i32 0, i32 1
  %5 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 24)
  %6 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 255, i32* %8, align 8
  %9 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i8* %13, i8** %16, align 8
  %17 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = ashr i32 %21, 32
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
