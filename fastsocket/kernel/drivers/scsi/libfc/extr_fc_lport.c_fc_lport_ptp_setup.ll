; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_ptp_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_ptp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)*, %struct.TYPE_10__* (%struct.fc_lport.0*, i32)*, i32, i32 (%struct.TYPE_10__*)* }
%struct.fc_lport.0 = type opaque
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, i32, i8*, i8*)* @fc_lport_ptp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_ptp_setup(%struct.fc_lport* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %19 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %20, align 8
  %22 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %23 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = call i32 %21(%struct.TYPE_10__* %24)
  %26 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %27 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @kref_put(i32* %29, i32 %33)
  br label %35

35:                                               ; preds = %17, %4
  %36 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %37 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__* (%struct.fc_lport.0*, i32)*, %struct.TYPE_10__* (%struct.fc_lport.0*, i32)** %38, align 8
  %40 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %41 = bitcast %struct.fc_lport* %40 to %struct.fc_lport.0*
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.TYPE_10__* %39(%struct.fc_lport.0* %41, i32 %42)
  %44 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %45 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %44, i32 0, i32 0
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %45, align 8
  %46 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %47 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = call i32 @kref_get(i32* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %53 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i8* %51, i8** %56, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %59 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i8* %57, i8** %62, align 8
  %63 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %64 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %68 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %69, align 8
  %71 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %72 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = call i32 %70(%struct.TYPE_10__* %73)
  %75 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %76 = call i32 @fc_lport_enter_ready(%struct.fc_lport* %75)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_lport_enter_ready(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
