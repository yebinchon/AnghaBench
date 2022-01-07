; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_qlogicfas408.c_ql_icmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_qlogicfas408.c_ql_icmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32* }
%struct.qlogicfas408_priv = type { i32, i32, i32, %struct.scsi_cmnd*, i64 }

@REG0 = common dso_local global i32 0, align 4
@REG1 = common dso_local global i32 0, align 4
@qlcfgc = common dso_local global i32 0, align 4
@qlcfg8 = common dso_local global i32 0, align 4
@qlcfg7 = common dso_local global i32 0, align 4
@qlcfg6 = common dso_local global i32 0, align 4
@qlcfg5 = common dso_local global i32 0, align 4
@qlcfg9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @ql_icmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_icmd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.qlogicfas408_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = call %struct.qlogicfas408_priv* @get_priv_by_cmd(%struct.scsi_cmnd* %7)
  store %struct.qlogicfas408_priv* %8, %struct.qlogicfas408_priv** %3, align 8
  %9 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %10 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %13 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %16 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @REG0, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 5
  %20 = call i32 @inb(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 5
  %23 = call i32 @inb(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 3
  %28 = call i32 @outb(i32 2, i32 %27)
  br label %40

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 7
  %32 = call i32 @inb(i32 %31)
  %33 = and i32 %32, 31
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 3
  %38 = call i32 @outb(i32 1, i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %46, %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 5
  %44 = call i32 @inb(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %41

47:                                               ; preds = %41
  %48 = load i32, i32* @REG1, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 8
  %51 = call i32 @outb(i32 1, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 11
  %54 = call i32 @outb(i32 0, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 8
  %57 = call i32 @inb(i32 %56)
  %58 = load i32, i32* @REG0, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 11
  %61 = call i32 @outb(i32 64, i32 %60)
  %62 = load i32, i32* @qlcfgc, align 4
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 12
  %65 = call i32 @outb(i32 %62, i32 %64)
  %66 = load i32, i32* @qlcfg8, align 4
  %67 = or i32 64, %66
  %68 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %69 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %67, %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 8
  %74 = call i32 @outb(i32 %71, i32 %73)
  %75 = load i32, i32* @qlcfg7, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 7
  %78 = call i32 @outb(i32 %75, i32 %77)
  %79 = load i32, i32* @qlcfg6, align 4
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 6
  %82 = call i32 @outb(i32 %79, i32 %81)
  %83 = load i32, i32* @qlcfg5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 5
  %86 = call i32 @outb(i32 %83, i32 %85)
  %87 = load i32, i32* @qlcfg9, align 4
  %88 = and i32 %87, 7
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 9
  %91 = call i32 @outb(i32 %88, i32 %90)
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %93 = call i32 @scmd_id(%struct.scsi_cmnd* %92)
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 4
  %96 = call i32 @outb(i32 %93, i32 %95)
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %114, %47
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 2
  %113 = call i32 @outb(i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %6, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %97

117:                                              ; preds = %97
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %119 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %120 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %119, i32 0, i32 3
  store %struct.scsi_cmnd* %118, %struct.scsi_cmnd** %120, align 8
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 3
  %123 = call i32 @outb(i32 65, i32 %122)
  ret void
}

declare dso_local %struct.qlogicfas408_priv* @get_priv_by_cmd(%struct.scsi_cmnd*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
