; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_setup_SCBs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_setup_SCBs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_host = type { i64, %struct.orc_extended_scb*, %struct.orc_scb*, i64, i32 }
%struct.orc_extended_scb = type { i32 }
%struct.orc_scb = type { i32, %struct.orc_extended_scb*, i8*, i8* }

@ORC_MAXQUEUE = common dso_local global i32 0, align 4
@ORC_SCBSIZE = common dso_local global i64 0, align 8
@ORC_SCBBASE0 = common dso_local global i64 0, align 8
@ORC_SCBBASE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.orc_host*)* @setup_SCBs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_SCBs(%struct.orc_host* %0) #0 {
  %2 = alloca %struct.orc_host*, align 8
  %3 = alloca %struct.orc_scb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.orc_extended_scb*, align 8
  %6 = alloca i64, align 8
  store %struct.orc_host* %0, %struct.orc_host** %2, align 8
  %7 = load i32, i32* @ORC_MAXQUEUE, align 4
  %8 = load %struct.orc_host*, %struct.orc_host** %2, align 8
  %9 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ORC_SCBSIZE, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outb(i32 %7, i64 %12)
  %14 = load %struct.orc_host*, %struct.orc_host** %2, align 8
  %15 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.orc_host*, %struct.orc_host** %2, align 8
  %18 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ORC_SCBBASE0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outl(i32 %16, i64 %21)
  %23 = load %struct.orc_host*, %struct.orc_host** %2, align 8
  %24 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.orc_host*, %struct.orc_host** %2, align 8
  %27 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ORC_SCBBASE1, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outl(i32 %25, i64 %30)
  %32 = load %struct.orc_host*, %struct.orc_host** %2, align 8
  %33 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %32, i32 0, i32 2
  %34 = load %struct.orc_scb*, %struct.orc_scb** %33, align 8
  store %struct.orc_scb* %34, %struct.orc_scb** %3, align 8
  %35 = load %struct.orc_host*, %struct.orc_host** %2, align 8
  %36 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %35, i32 0, i32 1
  %37 = load %struct.orc_extended_scb*, %struct.orc_extended_scb** %36, align 8
  store %struct.orc_extended_scb* %37, %struct.orc_extended_scb** %5, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %70, %1
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ORC_MAXQUEUE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %38
  %43 = load %struct.orc_host*, %struct.orc_host** %2, align 8
  %44 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = add i64 %45, %48
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.orc_scb*, %struct.orc_scb** %3, align 8
  %54 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.orc_scb*, %struct.orc_scb** %3, align 8
  %59 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.orc_extended_scb*, %struct.orc_extended_scb** %5, align 8
  %61 = load %struct.orc_scb*, %struct.orc_scb** %3, align 8
  %62 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %61, i32 0, i32 1
  store %struct.orc_extended_scb* %60, %struct.orc_extended_scb** %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.orc_scb*, %struct.orc_scb** %3, align 8
  %65 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.orc_scb*, %struct.orc_scb** %3, align 8
  %67 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %66, i32 1
  store %struct.orc_scb* %67, %struct.orc_scb** %3, align 8
  %68 = load %struct.orc_extended_scb*, %struct.orc_extended_scb** %5, align 8
  %69 = getelementptr inbounds %struct.orc_extended_scb, %struct.orc_extended_scb* %68, i32 1
  store %struct.orc_extended_scb* %69, %struct.orc_extended_scb** %5, align 8
  br label %70

70:                                               ; preds = %42
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %38

73:                                               ; preds = %38
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
