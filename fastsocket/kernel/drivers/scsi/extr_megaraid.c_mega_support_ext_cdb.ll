; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_megaraid.c_mega_support_ext_cdb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_megaraid.c_mega_support_ext_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mega_support_ext_cdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mega_support_ext_cdb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i8], align 1
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @memset(i32* %9, i32 0, i32 4)
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  store i8 -92, i8* %11, align 1
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 2
  store i8 22, i8* %12, align 1
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %15 = call i32 @issue_scb_block(i32* %13, i8* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @issue_scb_block(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
