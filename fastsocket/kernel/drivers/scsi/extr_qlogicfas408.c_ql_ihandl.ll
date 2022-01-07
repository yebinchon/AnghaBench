; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_qlogicfas408.c_ql_ihandl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_qlogicfas408.c_ql_ihandl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i32 }
%struct.Scsi_Host = type { i32 }
%struct.qlogicfas408_priv = type { i32, %struct.scsi_cmnd* }

@REG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ql_ihandl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_ihandl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.qlogicfas408_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %4, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = call %struct.qlogicfas408_priv* @get_priv_by_host(%struct.Scsi_Host* %10)
  store %struct.qlogicfas408_priv* %11, %struct.qlogicfas408_priv** %5, align 8
  %12 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %5, align 8
  %13 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @REG0, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 4
  %18 = call i32 @inb(i32 %17)
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %56

22:                                               ; preds = %1
  %23 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %5, align 8
  %24 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %23, i32 0, i32 1
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %24, align 8
  %26 = icmp eq %struct.scsi_cmnd* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  store i32 16, i32* %7, align 4
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 5
  %35 = call i32 @inb(i32 %34)
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ false, %28 ], [ %36, %32 ]
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  br label %28

40:                                               ; preds = %37
  br label %56

41:                                               ; preds = %22
  %42 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %5, align 8
  %43 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %42, i32 0, i32 1
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %43, align 8
  store %struct.scsi_cmnd* %44, %struct.scsi_cmnd** %3, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = call i32 @ql_pcmd(%struct.scsi_cmnd* %45)
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %5, align 8
  %50 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %49, i32 0, i32 1
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %50, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  %53 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %52, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %55 = call i32 %53(%struct.scsi_cmnd* %54)
  br label %56

56:                                               ; preds = %41, %40, %21
  ret void
}

declare dso_local %struct.qlogicfas408_priv* @get_priv_by_host(%struct.Scsi_Host*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ql_pcmd(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
