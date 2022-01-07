; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_data_out_desc_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_data_out_desc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"client error. Invalid data_out_format %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_cmd*)* @data_out_desc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_out_desc_size(%struct.srp_cmd* %0) #0 {
  %2 = alloca %struct.srp_cmd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.srp_cmd* %0, %struct.srp_cmd** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.srp_cmd*, %struct.srp_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %20 [
    i32 128, label %10
    i32 130, label %11
    i32 129, label %12
  ]

10:                                               ; preds = %1
  br label %23

11:                                               ; preds = %1
  store i32 4, i32* %3, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.srp_cmd*, %struct.srp_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = add i64 4, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @eprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %12, %11, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @eprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
