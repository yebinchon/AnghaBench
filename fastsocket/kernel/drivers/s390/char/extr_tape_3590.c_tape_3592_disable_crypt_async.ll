; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3592_disable_crypt_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3592_disable_crypt_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_device*)* @tape_3592_disable_crypt_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_3592_disable_crypt_async(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  %3 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %4 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %5 = call %struct.tape_request* @__tape_3592_disable_crypt(%struct.tape_device* %4)
  store %struct.tape_request* %5, %struct.tape_request** %3, align 8
  %6 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %7 = call i32 @IS_ERR(%struct.tape_request* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %11 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %12 = call i32 @tape_do_io_async_free(%struct.tape_device* %10, %struct.tape_request* %11)
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.tape_request* @__tape_3592_disable_crypt(%struct.tape_device*) #1

declare dso_local i32 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_do_io_async_free(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
