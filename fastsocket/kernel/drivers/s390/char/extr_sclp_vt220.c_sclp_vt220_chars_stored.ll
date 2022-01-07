; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_chars_stored.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_chars_stored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_vt220_request = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sclp_vt220_sccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sclp_vt220_request*)* @sclp_vt220_chars_stored to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_vt220_chars_stored(%struct.sclp_vt220_request* %0) #0 {
  %2 = alloca %struct.sclp_vt220_request*, align 8
  %3 = alloca %struct.sclp_vt220_sccb*, align 8
  store %struct.sclp_vt220_request* %0, %struct.sclp_vt220_request** %2, align 8
  %4 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %2, align 8
  %5 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.sclp_vt220_sccb*
  store %struct.sclp_vt220_sccb* %8, %struct.sclp_vt220_sccb** %3, align 8
  %9 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %3, align 8
  %10 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = sub i64 %13, 4
  %15 = trunc i64 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
