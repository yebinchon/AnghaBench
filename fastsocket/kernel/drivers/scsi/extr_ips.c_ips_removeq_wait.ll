; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_removeq_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_removeq_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.scsi_cmnd*, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"ips_removeq_wait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_cmnd* (%struct.TYPE_4__*, %struct.scsi_cmnd*)* @ips_removeq_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_cmnd* @ips_removeq_wait(%struct.TYPE_4__* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %7 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %9 = icmp ne %struct.scsi_cmnd* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %3, align 8
  br label %67

11:                                               ; preds = %2
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %16 = icmp eq %struct.scsi_cmnd* %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = call %struct.scsi_cmnd* @ips_removeq_wait_head(%struct.TYPE_4__* %18)
  store %struct.scsi_cmnd* %19, %struct.scsi_cmnd** %3, align 8
  br label %67

20:                                               ; preds = %11
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %22, align 8
  store %struct.scsi_cmnd* %23, %struct.scsi_cmnd** %6, align 8
  br label %24

24:                                               ; preds = %36, %20
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %26 = icmp ne %struct.scsi_cmnd* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to %struct.scsi_cmnd*
  %33 = icmp ne %struct.scsi_cmnd* %28, %32
  br label %34

34:                                               ; preds = %27, %24
  %35 = phi i1 [ false, %24 ], [ %33, %27 ]
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %40, %struct.scsi_cmnd** %6, align 8
  br label %24

41:                                               ; preds = %34
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %43 = icmp ne %struct.scsi_cmnd* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %44
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store %struct.scsi_cmnd* %55, %struct.scsi_cmnd** %57, align 8
  br label %58

58:                                               ; preds = %54, %44
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  store %struct.scsi_cmnd* %65, %struct.scsi_cmnd** %3, align 8
  br label %67

66:                                               ; preds = %41
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %3, align 8
  br label %67

67:                                               ; preds = %66, %58, %17, %10
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  ret %struct.scsi_cmnd* %68
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local %struct.scsi_cmnd* @ips_removeq_wait_head(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
